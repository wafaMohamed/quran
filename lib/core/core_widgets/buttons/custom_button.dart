import 'package:flutter/material.dart';
import 'package:untitled4/core/theme/app_color/app_color.dart';

import '../../styles/text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonColor = AppColor.brownColor,
    this.textColor = AppColor.whiteColor,
    this.borderRadius = 10,
    this.padding = const EdgeInsets.symmetric(horizontal: 112, vertical: 10),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      child: Text(
        text,
        style: TextStyles.interFont20W600White,
      ),
    );
  }
}
