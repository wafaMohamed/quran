import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:untitled4/core/assets/app_assets/app_assets.dart';

class ReadTest extends StatefulWidget {
  const ReadTest({super.key});

  @override
  _ReadTestState createState() => _ReadTestState();
}

class _ReadTestState extends State<ReadTest> {
  stt.SpeechToText? _speech;
  bool _isListening = false;
  String _expectedText = "اقرا باسم ربك";
  String _spokenText = '';
  Color _textColor = Colors.white;
  double _similarityPercentage = 0.0;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  void dispose() {
    super.dispose();
    _speech!.stop();
  }

  void _startListening() async {
    bool available = await _speech!.initialize(
      onStatus: (val) => print('onStatus: $val'),
      onError: (val) => print('onError: $val'),
      // Enable Arabic support
    );
    if (available) {
      setState(() {
        _isListening = true;
        _textColor = Colors.white;
        _similarityPercentage = 0.0;
      });
      _speech!.listen(
        localeId: 'ar_SA',
        onResult: (val) => setState(() {
          _spokenText = val.recognizedWords;
          _updateTextColor();
        }),
      );
    }
  }

  void _stopListening() {
    if (_isListening) {
      setState(() {
        _isListening = false;
        _textColor = Colors.white;
      });
      _speech!.stop();
    }
  }

  void _resetChallenge() {
    setState(() {
      _spokenText = '';
      _textColor = Colors.white;
      _similarityPercentage = 0.0;
    });
  }

  void _updateTextColor() {
    bool isSimilar =
        _spokenText.trim().toLowerCase() == _expectedText.trim().toLowerCase();
    double similarity = isSimilar
        ? 100.0
        : _calculateSimilarityPercentage(_spokenText.trim().toLowerCase(),
            _expectedText.trim().toLowerCase());

    setState(() {
      _textColor = isSimilar ? Colors.green : Colors.red;
      _similarityPercentage = similarity;
    });
  }

  double _calculateSimilarityPercentage(String spoken, String expected) {
    int maxLength =
        spoken.length > expected.length ? spoken.length : expected.length;
    int commonLength =
        spoken.runes.where((rune) => expected.runes.contains(rune)).length;
    return (commonLength / maxLength) * 100.0;
  }

  FlutterTts flutterTts = FlutterTts();
  Future<void> _speakWord(String word) async {
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }

  String wordTest = "اقْرَأْ بِاسْمِ رَبِّكَ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('read test'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppAssets.audioCoverAsset),
        )),
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'اقْرَأْ بِاسْمِ رَبِّكَ',
                    style: TextStyle(fontSize: 32, color: _textColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Similarity: ${_similarityPercentage.toStringAsFixed(2)}%',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _isListening ? _stopListening : _startListening,
                  child: Icon(_isListening ? Icons.stop : Icons.mic),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _resetChallenge,
                  child: Icon(Icons.refresh),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    _speakWord(wordTest);
                  },
                  child: Icon(Icons.multitrack_audio),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
