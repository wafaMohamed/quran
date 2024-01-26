import 'package:flutter/material.dart';

import '../../core/assets/app_assets/app_assets.dart';
import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/core_widgets/custom_images/custom_svg_picture.dart';
import '../../core/core_widgets/text_widget/custom_text.dart';
import '../../core/core_widgets/vertical_spacing.dart';
import '../../core/language/app_texts.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () {},
        child: CustomContainer(
          borderRadius: 10.0,
          width: 500,
          height: 500,
          backgroundColor: AppColor.gridGrayColor,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomTextWidget(
                text: AppTextArabic.quranReading,
                style: TextStyles.interFont26W700White,
              ),
              const VerticalSpacing(20),
              const CustomSvgPicture(path: AppAssets.noiseSliderAsset),
            ],
          ),
        ),
      ),
    );
  }
}
