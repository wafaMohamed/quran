// import 'package:flutter/material.dart';
//
//
// class CustomAlertDialog extends StatelessWidget {
//   final String text;
//   final String textAction;
//   final String textTitle;
//
//   const CustomAlertDialog({
//     Key? key,
//     required this.text,
//     required this.textAction,
//     required this.textTitle,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text(textTitle, style: const TextStyle(color: Colors.black),),
//       content: Text(text,  style:  const TextStyle(color: Colors.blue),),
//       actions: <Widget>[
//         TextButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           child: Text(
//             textAction,
//               style: const TextStyle(color: Colors.black),
//           ),
//         ),
//       ],
//       backgroundColor: Colors.grey,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.w),
//         side: const BorderSide(
//           color: Colors.darkBlue,
//         ),
//       ),
//     );
//   }
// }
//
// void showCustomAlertDialog(
//     BuildContext context, String text, String textAction, String textTitle) {
//   showAnimatedDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return CustomAlertDialog(
//         text: text,
//         textAction: textAction,
//         textTitle: textTitle,
//       );
//     },
//     animationType: DialogTransitionType.scale,
//     curve: Curves.bounceInOut,
//     duration: const Duration(seconds: 1),
//   );
// }
