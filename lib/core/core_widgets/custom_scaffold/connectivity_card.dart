// import 'package:babi_dealz_app/core/core_components/widgets/text_widget/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../utils/app_theme/app_theme.dart';
// import '../../cubits/internet_connectivity_cubit/check_connectivitey_cubit.dart';
// import '../../cubits/internet_connectivity_cubit/check_connectivitey_state.dart';
//
//
// class CustomScaffoldCard extends StatelessWidget {
//   const CustomScaffoldCard({Key? key, required this.widget}) : super(key: key);
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
//                     backgroundColor: AppTheme.backgroundColor,
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
//                                   fontSize: 30.sp,
//                                   fontWeight: FontWeight.w500,
//                                   fontFamily: "SF",
//                                   color: AppTheme.subTitleColor),
//                             ),
//                           ),
//                           // Lottie.asset(AppAssets.cardsOfflineTwoAsset,
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
