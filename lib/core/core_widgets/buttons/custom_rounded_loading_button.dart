// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_training/core/theme/colors_manager.dart';
// import 'package:rounded_loading_button/rounded_loading_button.dart';
//
// class RoundedLoadingButtonWidget extends StatelessWidget {
//   const RoundedLoadingButtonWidget({
//     Key? key,
//     required this.color,
//     required this.successColor,
//     required this.text,
//     required this.controller,
//     required this.iconData,
//     required this.onPressed,
//   }) : super(key: key);
//
//   final Color color;
//   final Color successColor;
//   final String text;
//   final RoundedLoadingButtonController controller;
//   final IconData iconData;
//   final VoidCallback onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return RoundedLoadingButton(
//       controller: controller,
//       successColor: successColor,
//       width: MediaQuery.of(context).size.width * 0.80,
//       elevation: 0,
//       borderRadius: 25,
//       onPressed: onPressed,
//       color: color,
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             iconData,
//             size: 20,
//             color: ColorsManager.white,
//           ),
//           const SizedBox(width: 15),
//           Text(
//             text,
//             style: const TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w500,
//               color: ColorsManager.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
