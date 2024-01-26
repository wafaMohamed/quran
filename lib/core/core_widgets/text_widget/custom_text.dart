import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color color;
  final TextAlign? textAlign;
  final double? textScaleFactor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDecoration? textDecoration;
  final TextStyle? style;
  final TextDirection? textDirection;

  const CustomTextWidget({
    Key? key,
    required this.text,
    this.maxLines,
    this.color = Colors.white,
    this.textAlign,
    this.textScaleFactor,
    this.fontWeight = FontWeight.normal,
    this.overflow = TextOverflow.ellipsis,
    this.textDecoration,
    this.fontSize,
    //  this.fontFamily,
    this.style,
    this.textDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      style: style,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      textScaleFactor: textScaleFactor,
    );
  }
}
