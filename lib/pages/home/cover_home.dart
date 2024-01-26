import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';

import '../../../core/assets/app_assets/app_assets.dart';
import '../../../core/core_widgets/buttons/back_button.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../widgets/home_widget/search_bar.dart';

class CoverHomePage extends StatelessWidget {
  const CoverHomePage({
    Key? key,
    required this.child,
    required this.sizeChild,
    required this.size2,
    required this.title,
  }) : super(key: key);
  final Widget child;
  final double sizeChild;
  final double size2;
  final String title;

  // MediaQuery.of(context).size.height * 0.400
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
            const Positioned(top: 20, right: 10, child: CustomBackButton()),
            Positioned(
              top: 120,
              left: MediaQuery.of(context).size.width / 3,
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.eqra2LogoAsset,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              bottom: 0,
              top: size2,
              start: 0,
              end: 0,
              child: Column(
                children: [
                  CustomTextWidget(
                      text: title,
                      textDirection: TextDirection.rtl,
                      style: TextStyles.interFont20W600White),
                  SpaceManager.sizedBox5h(context),
                  const SearchBarItem(
                    text: AppTextArabic.searchYourFavoriteSheikh,
                  )
                ],
              ),
            ),
            Positioned.directional(
                textDirection: TextDirection.rtl,
                bottom: 0,
                top: sizeChild,
                start: 0,
                end: 0,
                child: child),
          ],
        ),
      ),
    );
  }
}
