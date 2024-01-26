import 'package:flutter/material.dart';
import 'package:untitled4/core/assets/app_assets/app_assets.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/core_widgets/vertical_spacing.dart';
import 'package:untitled4/core/language/app_texts.dart';

import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class CustomListWheelScrollView extends StatelessWidget {
  final List<String> items;
  final Function(int) onSelectedItemChanged;

  const CustomListWheelScrollView({
    Key? key,
    required this.items,
    required this.onSelectedItemChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      physics: const FixedExtentScrollPhysics(),
      itemExtent: 250,
      // Adjust the item extent based on your design
      diameterRatio: 2,
      // Adjust the diameter ratio based on your design
      onSelectedItemChanged: onSelectedItemChanged,
      perspective: 0.004,
      children: _buildItems(),
    );
  }

  List<Widget> _buildItems() {
    return items.map((item) => _buildItem(item)).toList();
  }

  Widget _buildItem(String item) {
    // List<String> assets = [
    //   AppAssets.noiseSliderAsset,
    //   AppAssets.quranAsset,
    //   AppAssets.noiseSliderAsset,
    // ];
    // List<String> text = [
    //   AppTextArabic.quranReading,
    //   AppTextArabic.quranListening,
    //   AppTextArabic.quranWriting,
    // ];
    BuildContext context;

    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () {
          // GoRouter.of(context).pushNamed(
          //     AppRoutesNames.chooseYourFavouriteSheikhRoute);
        },
        child: CustomContainer(
          borderRadius: 10.0,
          width: 500,
          height: 500,
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
    );
  }
}
