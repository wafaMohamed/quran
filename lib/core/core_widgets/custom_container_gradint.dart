// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_training/core/theme/colors_manager.dart';
//
// class CustomContainerGradient extends StatelessWidget {
//   final Widget child;
//
//   final Color backgroundColor;
//
//   final double borderRadius;
//
//   final EdgeInsets padding;
//   final Gradient? gradient;
//   final String? imagePath;
//
//   const CustomContainerGradient({
//     Key? key,
//     required this.child,
//     this.backgroundColor = ColorsManager.white,
//     this.borderRadius = 8.0,
//     this.padding = const EdgeInsets.all(16.0),
//     this.gradient,
//     this.imagePath,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath ?? ""),
//           fit: BoxFit.cover,
//         ),
//         color: backgroundColor.withOpacity(0.8),
//         borderRadius: BorderRadius.circular(borderRadius),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 4,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//               colors: GradientColors.blueGreenWithOpacity,
//               stops: const [0.0, 1]),
//         ),
//         child: child,
//       ),
//     );
//   }
// }
