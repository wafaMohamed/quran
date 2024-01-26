import 'package:flutter/material.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';

import '../../core/assets/app_assets/app_assets.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../widgets/home_widget/custom_list_wheel_scroll_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

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
            //?  listview widget
            Positioned.directional(
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
