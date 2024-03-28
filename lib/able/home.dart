import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled4/able/listen.dart';
import 'package:untitled4/able/read.dart';
import 'package:untitled4/chatbot.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';
import '../../core/assets/app_assets/app_assets.dart';
import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/core_widgets/vertical_spacing.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class HomeAblePeople extends StatefulWidget {
  const HomeAblePeople({super.key});

  @override
  State<HomeAblePeople> createState() => _HomeAblePeople();
}

class _HomeAblePeople extends State<HomeAblePeople> {
  late FixedExtentScrollController controller;
  String readQuran = 'تلاوة القرآن';
  String listenQuran = 'الاستماع  للقرآن';
  String writeQuran = 'الاستماع  للقرآن';
  String speakQuran = 'الاستماع  للقرآن';
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
                    Get.to(ReadAbleScreen());
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
                        CustomTextWidget(
                            text: 'Read the Quran',
                            style: TextStyles.interFont26W700White),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ListenAbleScreen());
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
                        CustomTextWidget(
                            text: 'Listen To Quran',
                            style: TextStyles.interFont26W700White),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const ChatBotQuran());
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: 'chatbot',
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        LottieBuilder.asset('assets/lottie/Animation1.json',
                            width: 150, height: 150),
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
}

class ChooseSurahAble extends StatefulWidget {
  const ChooseSurahAble({super.key});

  @override
  State<ChooseSurahAble> createState() => _ChooseSurahAble();
}

class _ChooseSurahAble extends State<ChooseSurahAble> {
  late FixedExtentScrollController controller;
  String alaqSurah = 'سورة العلق';
  String surahElbaqara = 'سورة البقرة';

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
                    Get.to(ReadAbleScreen());
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: 'سورة العلق',
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
                    //_speakWord(surahElbaqara);
                  },
                  onLongPress: () {
                    // Get.to(ListenQuranDisable());
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
                            text: 'سورة البقرة',
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
}
