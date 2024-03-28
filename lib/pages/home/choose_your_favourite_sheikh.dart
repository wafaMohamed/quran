import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_image_asset.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';
import '../../core/assets/app_assets/app_assets.dart';
import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/core_widgets/vertical_spacing.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class ChooseYourFavouriteSheikh extends StatefulWidget {
  const ChooseYourFavouriteSheikh({super.key});

  @override
  State<ChooseYourFavouriteSheikh> createState() =>
      _ChooseYourFavouriteSheikhState();
}

class _ChooseYourFavouriteSheikhState extends State<ChooseYourFavouriteSheikh> {
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
    final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

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
                    log('go to  ...');
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomTextWidget(
                            text: AppTextArabic.quranListening,
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        const Padding(
                          padding: EdgeInsets.only(top: 25, right: 175),
                          child: CustomImageAsset(
                            fit: BoxFit.cover,
                            path: AppAssets.mashari,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    log('go to  ...');
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
                GestureDetector(
                  onTap: () {
                    log('go to  ...');
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
                ///////////////////////////////////////
              ],
            ),
            /*  Positioned.directional(
              textDirection: TextDirection.rtl,
              bottom: 40,
              top: 0,
              start: 0,
              end: 0,
              child: CustomListWheelScrollView(
                items: items,
                onSelectedItemChanged: (index) {
                  // Handle the selected item change
                  print('Selected Item: ${items[index]}');
                },
              ),
            ), */
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
