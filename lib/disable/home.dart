import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';
import 'package:untitled4/disable/listen.dart';
import 'package:untitled4/disable/read.dart';

import '../../core/assets/app_assets/app_assets.dart';
import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/core_widgets/vertical_spacing.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class HomeDisable extends StatefulWidget {
  const HomeDisable({super.key});

  @override
  State<HomeDisable> createState() => _HomeDisable();
}

class _HomeDisable extends State<HomeDisable> {
  late FixedExtentScrollController controller;
  String readQuran = 'ستذهب الي تلاوة القرآن ';
  String listenQuran = 'ستذهب الي الاستماع  للقرآن ';
  FlutterTts flutterTts = FlutterTts();
  @override
  void initState() {
    controller = FixedExtentScrollController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

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
            //? listview widget
            ListWheelScrollView(
              // per higher => get hide
              //perspective: 0.009,
              // diameter => make it more visible
              diameterRatio: 1.5,
              controller: controller,
              itemExtent: 250,
              children: [
                GestureDetector(
                  onTap: () {
                    _speakWord(readQuran);
                  },
                  onLongPress: () {
                    Get.to(ReadQuranDisable());
                  },
                  onDoubleTap: () {
                    final nextindex = controller.selectedItem + 1;
                    controller.animateToItem(nextindex,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease);
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: AppTextArabic.quranReading,
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        const CustomSvgPicture(
                          path: AppAssets.quranAsset,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _speakWord(listenQuran);
                  },
                  onLongPress: () {
                    Get.to(ListenQuranDisable());
                  },
                  onDoubleTap: () {
                    // if last item repeat the list from the beginning
                    final nextindex = controller.selectedItem + 1;

                    controller.animateToItem(nextindex,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease);
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: AppTextArabic.quranListening,
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        const CustomSvgPicture(
                          path: AppAssets.quranAsset,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
    flutterTts.setVolume(0.9);
    flutterTts.setSpeechRate(0.5);
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }
}




/* import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:untitled4/able/home.dart';
import 'package:untitled4/disable/listen.dart';
import 'package:untitled4/disable/read.dart';

class HomeDisable extends StatefulWidget {
  const HomeDisable({super.key});

  @override
  State<HomeDisable> createState() => HomeDisableState();
}

class HomeDisableState extends State<HomeDisable> {
  String readQuran = 'ستذهب الي تلاوة القرآن ';
  String listenQuran = 'ستذهب الي الاستماع  للقرآن ';
  FlutterTts flutterTts = FlutterTts();
  late FixedExtentScrollController controller;
  @override
  void initState() {
    controller = FixedExtentScrollController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListWheelScrollView(
        // per higher => get hide
        //perspective: 0.009,
        // diameter => make it more visible
        diameterRatio: 1.5,
        controller: controller,
        itemExtent: 250,
        children: [
          GestureDetector(
            onTap: () {
              _speakWord(readQuran);
            },
            onLongPress: () {
              Get.to(ReadScreen());
            },
            onDoubleTap: () {
              final nextindex = controller.selectedItem + 1;
              controller.animateToItem(nextindex,
                  duration: Duration(milliseconds: 250), curve: Curves.ease);
            },
            child: Con(
              child: Text('read quran'),
            ),
          ),
          ///////////////////////////////////////
          GestureDetector(
            onTap: () {
              _speakWord(listenQuran);
            },
            onLongPress: () {
              Get.to(ListenScreen());
            },
            onDoubleTap: () {
              final nextindex = controller.selectedItem + 1;
              controller.animateToItem(nextindex,
                  duration: Duration(milliseconds: 250), curve: Curves.ease);
            },
            child: Con(
              child: Text('listen quran'),
            ),
          ),
          GestureDetector(
              onTap: () => Get.offAll(HomeAblePeople()),
              child: Con(child: Text('able section'))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            final nextindex = controller.selectedItem + 1;
            controller.animateToItem(nextindex,
                duration: Duration(milliseconds: 250), curve: Curves.ease);
          }),
    );
  }

  Future<void> _speakWord(String word) async {
    flutterTts.setVolume(0.9);
    flutterTts.setSpeechRate(0.5);
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }
}

class Con extends StatelessWidget {
  Con({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.amber,
      child: Align(alignment: Alignment.center, child: child),
    );
  }
}
 */