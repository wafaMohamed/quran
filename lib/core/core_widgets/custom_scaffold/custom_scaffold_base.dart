// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../../core/utils/app_theme/app_theme.dart';
//
// class CustomScaffoldBasePage extends StatelessWidget {
//   final Widget child;
//   final double margin;
//
//   const CustomScaffoldBasePage(
//       {Key? key, required this.child, required this.margin})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     const appBarHeight = kToolbarHeight;
//
//     return  Container(
//         width: MediaQuery.of(context).size.width,
//         height: screenHeight - appBarHeight,
//         margin:
//         EdgeInsets.only(top: margin * MediaQuery.of(context).size.height),
//         padding: EdgeInsets.only(top: 15.w,left:20.w,right: 20.w ),
//         decoration: BoxDecoration(
//           color: AppTheme.backgroundColor,
//           borderRadius: BorderRadius.vertical(
//             top: Radius.circular(45.w),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: AppTheme.shadowColor.withOpacity(0.3),
//               spreadRadius: 3,
//               blurRadius: 10,
//               offset: const Offset(0, -3),
//             ),
//           ],
//         ),
//         child: child,
//       );
//   }
// }
