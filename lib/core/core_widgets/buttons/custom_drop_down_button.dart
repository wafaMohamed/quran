// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_training/core/resoureses/images_manager.dart';
// import 'package:flutter_application_web_training/core/theme/colors_manager.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../text_widget/custom_text.dart';
//
// class CustomDropdownButton extends StatefulWidget {
//   final String? selectedOption;
//   final List<String> options;
//   final ValueChanged<String?> onChanged;
//   final String text;
//   final Color colorDropDown;
//   final Color colorText;
//   final Color colorBorder;
//   final Color colorDefaultText;
//
//   const CustomDropdownButton({
//     super.key,
//     required this.selectedOption,
//     required this.options,
//     required this.onChanged,
//     required this.text,
//     required this.colorDropDown,
//     required this.colorText,
//     required this.colorBorder,
//     required this.colorDefaultText,
//   });
//
//   @override
//   // ignore: library_private_types_in_public_api
//   _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
// }
//
// class _CustomDropdownButtonState extends State<CustomDropdownButton> {
//   bool isDropdownOpen = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 15.w),
//       decoration: BoxDecoration(
//         border: Border.all(color: widget.colorBorder),
//         borderRadius: BorderRadius.zero,
//       ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           icon:
//               const Icon(Icons.keyboard_arrow_down, color: ColorsManager.black),
//           borderRadius: BorderRadius.zero,
//           style: TextStyle(
//             color: widget.colorText,
//           ),
//           // Use widget.colorText
//           dropdownColor: widget.colorDropDown,
//           // Use widget.colorDropDown
//           value: widget.selectedOption,
//           hint: CustomTextWidget(
//             textAlign: TextAlign.left,
//             text: widget.text,
//             style: TextStyle(
//               fontSize: 10.sp,
//               color: widget.colorDefaultText,
//             ),
//           ),
//           isExpanded: true,
//           onChanged: widget.onChanged,
//           items: widget.options.map((option) {
//             return DropdownMenuItem<String>(
//               value: option,
//               child: CustomTextWidget(
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   fontSize: 10.sp,
//                 ),
//                 overflow: TextOverflow.ellipsis,
//                 text: option,
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
