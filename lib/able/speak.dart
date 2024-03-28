/* import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:untitled4/core/assets/app_assets/app_assets.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  int tappedIndex = -1;

  void handleDoubleTap(int index) {
    setState(() {
      tappedIndex = index;
    });
    if (index == 1) {
      Get.defaultDialog(
        title: "congratulations",
        content: Text("keep learning"),
        barrierDismissible: false,
        confirm: ElevatedButton(
          onPressed: () {
            Get.back(); // Close the dialog
          },
          child: Text("next challenge"),
        ),
        cancel: ElevatedButton(
          onPressed: () {
            resetChallenge();
            setState(() {});
            Get.back(); // Close the dialog
          },
          child: Text("repeat"),
        ),
      );
    }
  }

/* List<String> words = [
    "اقْرَأْ بِاسْمِ رَبِّكَ",
    "الَّذِي خَلَقَ",
    "خَلَقَ الإِنسَانَ مِنْ عَلَقْ",
    "اقْرَأْ وَرَبُّكَ الأَكْرَمْ",
    "الَّذِي عَلَّمَ بِالْقَلَمِْ",
    "عَلَّمَ الإِنسَانَ مَا لَمْ يَعْلَمْ",
    "صَدَقَ اللَّهُ العظيم",
  ]; */
  void resetChallenge() {
    setState(() {
      tappedIndex = -1;
    });
  }

  FlutterTts flutterTts = FlutterTts();
  Future<void> _speakWord(String word) async {
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }

  String readaya1 = "اقْرَأْ بِاسْمِ رَبِّكَ";
  String readaya2 = "الَّذِي خَلَقَ";
  String readaya3 = "الَّذِي عَلَّمَ بِالْقَلَمِْ";
  String readaya4 = "خَلَقَ الإِنسَانَ مِنْ عَلَقْ";
  List<String> containerNames = [
    "الَّذِي خَلَقَ",
    "اقْرَأْ بِاسْمِ رَبِّكَ",
    "الَّذِي عَلَّمَ بِالْقَلَمِْ",
    "خَلَقَ الإِنسَانَ مِنْ عَلَقْ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AppAssets.audioCoverAsset))),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onDoubleTap: () => handleDoubleTap(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: (tappedIndex == index)
                          ? (index == 1)
                              ? Colors.green
                              : Colors.red
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        containerNames[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                _speakWord(readaya1);
              },
              child: Text('Tap to listen to the Aya'),
            ),
          ],
        ),
      ),
    );
  }
}
 */


/* import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  int tappedIndex = -1;

  void handleDoubleTap(int index) {
    setState(() {
      tappedIndex = index;
    });
  }

  void resetChallenge() {
    setState(() {
      tappedIndex = -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onDoubleTap: () => handleDoubleTap(index),
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(16.0),
                    color: (tappedIndex == index)
                        ? (index == 1)
                            ? Colors.green
                            : Colors.red
                        : Colors.grey,
                    child: Center(
                      child: Text(
                        'Container $index',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: resetChallenge,
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}
 */