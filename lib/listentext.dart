import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:string_similarity/string_similarity.dart';

class SpeechToTextScreen extends StatefulWidget {
  @override
  _SpeechToTextScreenState createState() => _SpeechToTextScreenState();
}

class _SpeechToTextScreenState extends State<SpeechToTextScreen> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = '';
  final String targetWord = "اقرا باسم ربك الذي خلق";
  Color _wordColor = Colors.black;
  double _similarityPercentage = 0;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _initializeSpeech();
  }

  void _initializeSpeech() async {
    bool isAvailable = await _speech.initialize();
    if (isAvailable) {
      print("Speech recognition is available");
    } else {
      print("Speech recognition is not available");
      // Handle the case when speech recognition is not available
    }
  }

  void _startListening() {
    if (!_isListening) {
      _speech.listen(
        onResult: (result) {
          setState(() {
            _text = result.recognizedWords;
          });

          // Calculate similarity percentage
          double percentage = _text.similarityTo(targetWord) * 100;

          // Delay for a moment to let the user finish speaking
          Future.delayed(Duration(seconds: 1), () {
            // Compare recognized word with targetWord
            if (percentage >= 80) {
              _updateWordColor(Colors.green);
            } else {
              _updateWordColor(Colors.red);
            }

            // Update similarity percentage
            setState(() {
              _similarityPercentage = percentage;
            });
          });
        },
        localeId: 'ar_SA',
      );
      setState(() {
        _isListening = true;
      });
    }
  }

  void _stopListening() {
    if (_isListening) {
      _speech.stop();
      setState(() {
        _isListening = false;
      });
    }
  }

  void _updateWordColor(Color color) {
    setState(() {
      _wordColor = color;
    });
  }

  void _resetChallenge() {
    setState(() {
      _text = '';
      _wordColor = Colors.black;
      _similarityPercentage = 0;
      _isListening = false; // Stop listening
    });
    _speech.stop(); // Stop listening explicitly
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech to Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'اقْرَأْ بِاسْمِ رَبِّكَ الَّذِي خَلَقَ',
              style: TextStyle(fontSize: 24, color: _wordColor),
            ),
            SizedBox(height: 20),
            Text(
              'Similarity: ${_similarityPercentage.toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 70,
            ),
            IconButton(
              onPressed: () {
                if (_isListening) {
                  _stopListening();
                } else {
                  _startListening();
                }
              },
              icon: Icon(_isListening ? Icons.stop : Icons.mic),
            ),
            SizedBox(
              height: 25,
            ),
            IconButton(
              onPressed: _resetChallenge,
              icon: Icon(
                Icons.refresh,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
