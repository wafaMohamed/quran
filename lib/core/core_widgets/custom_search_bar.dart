// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_training/core/language/string_manager.dart';
// import 'package:flutter_application_web_training/core/theme/colors_manager.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CustomSearchBar extends StatelessWidget {
//   const CustomSearchBar({
//     super.key,
//   });
//   OutlineInputBorder border() => OutlineInputBorder(
//         borderSide: BorderSide.none,
//         borderRadius: BorderRadius.all(Radius.circular(20.r)),
//       );
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       // height: 30.h,
//       child: TextField(
//           cursorColor: ColorsManager.black,
//           decoration: InputDecoration(
//             contentPadding:
//                 EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
//             filled: true,
//             fillColor: ColorsManager.white,
//             suffixIcon: const Icon(
//               Icons.search,
//               color: ColorsManager.black,
//             ),
//             hintText: StringManager.search,
//             border: border(),
//             enabledBorder: border(),
//             disabledBorder: border(),
//             errorBorder: border(),
//           )),
//     );
//   }
// }
