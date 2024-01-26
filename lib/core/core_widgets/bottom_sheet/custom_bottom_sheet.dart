// import 'package:flutter/material.dart';
//
//
// class CustomBottomSheetWidget extends StatelessWidget {
//   final VoidCallback? onClosed;
//   final Widget child;
//
//   const CustomBottomSheetWidget({
//     Key? key,
//     this.onClosed,
//     required this.child,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop();
//         if (onClosed != null) {
//           onClosed!();
//         }
//       },
//       child: Container(
//         color: Colors.transparent,
//         child: Center(
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20.w),
//             child: Container(
//               color: Colors.white,
//               child: SizedBox(
//                 width:double.infinity,
//                 height:double.infinity,
//                 child: child,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
