import 'package:flutter/material.dart';
import 'package:untitled4/core/theme/app_color/app_color.dart';

import '../../styles/text_style.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final double borderRadius;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textStyle = const TextStyle(fontSize: 16, color: AppColor.whiteColor),
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          overflow: TextOverflow.ellipsis,
          textDirection: TextDirection.rtl,
          text,
          style: TextStyles.interFont16W500White
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
