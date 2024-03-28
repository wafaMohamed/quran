import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:untitled4/core/assets/app_assets/app_assets.dart';

class ListenTest extends StatefulWidget {
  @override
  _ListenTestState createState() => _ListenTestState();
}

class _ListenTestState extends State<ListenTest> {
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
    } else {
      Get.defaultDialog(
        title: "sorry isn't true",
        content: Text("keep Trying"),
        barrierDismissible: false,
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

  String readaya1 = "اقْرَأْ بِاسْمِ رَبِّكَ الَّذِي خَلَقَ";
  String readaya2 = "الَّذِي خَلَقَ";
  String readaya3 = "الَّذِي عَلَّمَ بِالْقَلَمِْ";
  String readaya4 = "خَلَقَ الإِنسَانَ مِنْ عَلَقْ";
  List<String> containerNames = [
    "الَّذِي خَلَقَ",
    "اقْرَأْ بِاسْمِ رَبِّكَ الَّذِي خَلَقَ",
    "الَّذِي عَلَّمَ بِالْقَلَمِْ",
    "خَلَقَ الإِنسَانَ مِنْ عَلَقْ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listen test'),
        centerTitle: true,
      ),
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
                  onTap: () => handleDoubleTap(index),
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

/* import 'package:flutter/material.dart';

class ListenTest extends StatefulWidget {
  const ListenTest({super.key});

  @override
  State<ListenTest> createState() => _ListenTestState();
}

// icon when the user pres on it will generate the sound of Ayah
// will be 4 containers and under each one the name in arabic
// he has to choose the correct answer
class _ListenTestState extends State<ListenTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listen test'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Text('مازن'),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Text('خطا'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Text('اقرا باسم ربك'),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  child: Text('محمد'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {}, child: Text('listen'))
        ],
      ),
    );
  }
}
 */