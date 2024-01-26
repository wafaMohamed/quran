// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_training/core/theme/colors_manager.dart';
//
// class ContainerGradient extends StatelessWidget {
//   const ContainerGradient({
//     Key? key,
//     required this.text,
//     required this.borderRadius,
//     this.height,
//     this.width,
//   }) : super(key: key);
//
//   final Widget text;
//   final BorderRadius borderRadius;
//   final double? height;
//   final double? width;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: GradientColors.blueGreen,
//           begin: Alignment.centerRight,
//           end: Alignment.centerLeft,
//         ),
//         border: Border.all(color: ColorsManager.green),
//         borderRadius: borderRadius,
//       ),
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: text,
//         ),
//       ),
//     );
//   }
// }
