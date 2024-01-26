// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
//
// class CustomScaffold extends StatelessWidget {
//   const CustomScaffold({Key? key, required this.widget}) : super(key: key);
//   final Widget widget;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ConnectivityCubit, ConnectivityState>(
//       listener: (BuildContext context, state) {},
//       builder: (BuildContext context, Object? state) {
//         return Scaffold(
//           body: state is ConnectivityConnected
//               ? widget
//               : SafeArea(
//                   child: Scaffold(
//                     body: SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(
//                             height: 5.h,
//                           ),
//                           Center(
//                             child: CustomTextWidget(
//                               text: "Check WIFI",
//                               style: TextStyle(
//                                   fontSize: 25.sp,
//                                   fontWeight: FontWeight.w500,
//                                   fontFamily: "SF",
//                                   color: AppTheme.subTitleColor),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 4.h,
//                           ),
//                           // Lottie.asset(AppAssets.offlineAsset,
//                           //     width: 150.w, height: 80.h),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//         );
//       },
//     );
//   }
// }
