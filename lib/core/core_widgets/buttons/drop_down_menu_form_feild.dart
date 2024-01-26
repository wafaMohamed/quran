// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_web_training/core/theme/colors_manager.dart';
//
//
// class CustomDropDownMenuField extends StatelessWidget {
//   const CustomDropDownMenuField({
//     Key? key,
//     required this.text,
//     required this.items,
//     required this.onChanged,
//     this.validator,
//     this.onSaved,
//     this.buttonStyleData,
//     this.iconStyleData,
//     this.dropdownStyleData,
//     this.menuItemStyleData,
//     this.decoration,
//   }) : super(key: key);
//
//   final String text;
//   final List<String> items;
//   final ValueChanged<String?> onChanged;
//   final FormFieldValidator<String>? validator;
//   final FormFieldSetter<String>? onSaved;
//   final ButtonStyleData? buttonStyleData;
//   final IconStyleData? iconStyleData;
//   final DropdownStyleData? dropdownStyleData;
//   final MenuItemStyleData? menuItemStyleData;
//   final InputDecoration? decoration;
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField2<String>(
//       isExpanded: true,
//       decoration: decoration ?? const InputDecoration(
//         contentPadding: EdgeInsets.symmetric(vertical: 16),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(color: ColorsManager.blue2),
//           borderRadius: BorderRadius.zero,
//         ),
//       ),
//       hint: Text(
//         text,
//         style: const TextStyle(fontSize: 14, color: ColorsManager.gray2),
//       ),
//       items: items
//           .map((item) => DropdownMenuItem<String>(
//         value: item,
//         child: Text(
//           item,
//           style: const TextStyle(fontSize: 14),
//         ),
//       ))
//           .toList(),
//       validator: validator ?? (value) => value == null ? 'Please select.' : null,
//       onChanged: onChanged,
//       onSaved: onSaved ?? (value) {},
//       buttonStyleData: buttonStyleData ?? const ButtonStyleData(padding: EdgeInsets.only(right: 8)),
//       iconStyleData: iconStyleData ?? const IconStyleData(
//         icon: Icon(
//           Icons.arrow_drop_down,
//           color: ColorsManager.blue2,
//         ),
//         iconSize: 24,
//       ),
//       dropdownStyleData: dropdownStyleData ?? const DropdownStyleData(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.zero,
//         ),
//       ),
//       menuItemStyleData: menuItemStyleData ?? const MenuItemStyleData(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//       ),
//     );
//   }
// }
