// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_training/core/helpers/extensions.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CustomTextWidget extends StatelessWidget {
//   final String text;
//   final int? maxLines;
//   final TextOverflow? overflow;
//   final Color color;
//   final TextAlign? textAlign;
//   final double? textScaleFactor;
//   final FontWeight? fontWeight;
//   final double fontSize;
//   final TextDecoration? textDecoration;
//   // final String? fontFamily;
//
//   const CustomTextWidget({
//     Key? key,
//     required this.text,
//     this.maxLines,
//     this.color = Colors.black,
//     this.textAlign,
//     this.textScaleFactor,
//     this.fontWeight = FontWeight.normal,
//     this.overflow = TextOverflow.ellipsis,
//     this.textDecoration,
//     this.fontSize = 14,
//     //  this.fontFamily,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       // textDirection: TextDirection.ltr,
//       style: TextStyle(
//         fontSize: context.isMobTab ? fontSize.sp : fontSize,
//         fontWeight: fontWeight,
//         color: color,
//       ),
//       maxLines: maxLines,
//       overflow: overflow,
//       textAlign: textAlign,
//       textScaleFactor: textScaleFactor,
//     );
//   }
// }
