import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:untitled4/able/read_test.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';
import '../../core/assets/app_assets/app_assets.dart';
import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/core_widgets/vertical_spacing.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class ReadAbleScreen extends StatefulWidget {
  const ReadAbleScreen({super.key});

  @override
  State<ReadAbleScreen> createState() => _ReadAbleScreen();
}

class _ReadAbleScreen extends State<ReadAbleScreen> {
  FlutterTts flutterTts = FlutterTts();
  List<String> words = [
    "أعُوذُ بِاللَّهِ مِنَ الشَّيطَانِ الرَّجِيمِ",
    "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
    "اقْرَأْ بِاسْمِ رَبِّكَ الَّذِي خَلَقَ",
  ];
  /*  List<String> francoWords = [
    "eqr'a bism rabik Alazy khalaq",
    "khalaq Elensan min alaq",
  ]; */
  List<String> enWords = [
    "i seek refuge in allah from the expelled satan\n"
        "(this sentence is a must to start with)",
    "in the name of God, the most gracious,the most merciful"
        "(this sentence is a must to start with)",
    "recite in the name of your lord who created ",
    "created man from a clinging substance",
    "recite, and your lord is the most generous",
    "who taught by the pen",
    "taught man that which he knew not",
    "Allah Almightly is Truthful"
        "(preferably to end with this sentence but is not a must)",
  ];
  /*  List<String> frwords = [
    "Lis au nom de ton Seigneur",
    "Lis au nom de ton Seigneur",
    "Qui a créé",
    "Il a créé l'homme à partir d'un caillot",
    "Lis, et ton Seigneur est le Plus Généreux",
    "Celui qui enseignait par la plume",
    "L'anthropologie ne savait pas quoi",
    "La grande vérité de Dieu",
  ]; */
  int currentWordIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.audioCoverAsset,
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
                      },
                      onDoubleTap: () {
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
                            Align(
                                alignment: Alignment.topLeft,
                                child: CustomTextWidget(
                                    text: 'Surah Name: elalaq')),
                            CustomTextWidget(
                                text: words[currentWordIndex],
                                style: TextStyles.interFont16W500White),
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
        currentWordIndex = 0;
        // If all words are spoken, you can add additional logic here
        // For now, let's reset to the first word
        Get.defaultDialog(
          title: 'task finished',
          middleText: 'do you want to go to test or repeat?',
          confirm: TextButton(
              onPressed: () {
                currentWordIndex = 0;
                Get.back();
              },
              child: Text('repeat')),
          cancel: TextButton(
              onPressed: () {
                Get.to(ReadTest());
              },
              child: Text('test')),
        );
      }
    });
  }
}
