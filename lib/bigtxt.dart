import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class FontScreen extends StatefulWidget {
  @override
  _FontScreenState createState() => _FontScreenState();
}

class _FontScreenState extends State<FontScreen> {
  double fontSize = 20.0; // Initial font size
  FlutterTts flutterTts = FlutterTts();

  void speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
  }

  void updateFontSize(double value) {
    setState(() {
      fontSize = value;
      speak('font size $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('button')),
            Text(
              'Read Me',
              style: TextStyle(fontSize: fontSize),
            ),
            SizedBox(height: 20.0),
            Slider(
              value: fontSize,
              min: 1.0,
              max: 50.0,
              onChanged: updateFontSize,
              label: fontSize.toString(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    //flutterTts.shutdown();
    super.dispose();
  }
}
