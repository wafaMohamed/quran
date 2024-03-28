import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';
import '../../core/assets/app_assets/app_assets.dart';
import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/core_widgets/vertical_spacing.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class ReadQuranDisable extends StatefulWidget {
  const ReadQuranDisable({super.key});

  @override
  State<ReadQuranDisable> createState() => _ReadQuranDisable();
}

class _ReadQuranDisable extends State<ReadQuranDisable> {
  FlutterTts flutterTts = FlutterTts();
  List<String> words = [
    "اقْرَأْ بِاسْمِ رَبِّكَ",
    "الَّذِي خَلَقَ",
    "خَلَقَ الإِنسَانَ مِنْ عَلَقْ",
    "اقْرَأْ وَرَبُّكَ الأَكْرَمْ",
    "الَّذِي عَلَّمَ بِالْقَلَمِْ",
    "عَلَّمَ الإِنسَانَ مَا لَمْ يَعْلَمْ",
    "صَدَقَ اللَّهُ العظيم",
  ];
  int currentWordIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.topViewQuranBooksAsset,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              bottom: 690,
              right: 70,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomTextWidget(
                      text: AppTextArabic.welcomeInQuranApp,
                      style: TextStyles.interFont26W700White),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(seconds: 2),
                    child: GestureDetector(
                      key: Key(words[currentWordIndex]),
                      onTap: () {
                        _speakWord(words[currentWordIndex]);
                        _changeWord();
                      },
                      child: CustomContainer(
                        borderRadius: 10.0,
                        width: 300,
                        height: 400,
                        backgroundColor: AppColor.gridGrayColor,
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextWidget(
                                text: words[currentWordIndex],
                                style: TextStyles.interFont26W700White),
                            const VerticalSpacing(20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.850,
              start: 0,
              end: 0,
              child: Center(
                child: Column(
                  children: [
                    SpaceManager.sizedBox12h(context),
                    const CustomSvgPicture(path: AppAssets.whiteIconAsset),
                    SpaceManager.sizedBox12h(context),
                    CustomTextWidget(
                        text: AppTextArabic.ayaInQuran,
                        style: TextStyles.interFont16W500White),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _speakWord(String word) async {
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }

  Future<void> _changeWord() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      currentWordIndex++;
      if (currentWordIndex >= words.length) {
        // If all words are spoken, you can add additional logic here
        // For now, let's reset to the first word

        currentWordIndex = 0;
      }
    });
  }
}
/* import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ReadQuranDisable extends StatefulWidget {
  @override
  _ReadQuranDisable createState() => _ReadQuranDisable();
}

class _ReadQuranDisable extends State<ReadQuranDisable> {
  FlutterTts flutterTts = FlutterTts();
  List<String> words = [
    "اقْرَأْ بِاسْمِ رَبِّكَ",
    "الَّذِي خَلَقَ",
    "خَلَقَ الإِنسَانَ مِنْ عَلَقْ",
    "اقْرَأْ وَرَبُّكَ الأَكْرَمْ",
    "الَّذِي عَلَّمَ بِالْقَلَمِْ",
    "عَلَّمَ الإِنسَانَ مَا لَمْ يَعْلَمْ",
    "صَدَقَ اللَّهُ العظيم",
  ];
  int currentWordIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text-to-Speech Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* currentWordIndex >= words.length
                ? Icon(Icons.abc)
                :  */
            AnimatedSwitcher(
              duration: const Duration(seconds: 2),
              child: GestureDetector(
                key: Key(words[currentWordIndex]),
                onTap: () {
                  _speakWord(words[currentWordIndex]);
                  _changeWord();
                },
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundColor:
                      Colors.blue, // Customize the background color
                  child: Text(
                    words[currentWordIndex],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _speakWord(String word) async {
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }

  Future<void> _changeWord() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      currentWordIndex++;
      if (currentWordIndex >= words.length) {
        // If all words are spoken, you can add additional logic here
        // For now, let's reset to the first word

        currentWordIndex = 0;
      }
    });
  }
}
 */