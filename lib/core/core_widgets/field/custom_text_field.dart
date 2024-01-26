import 'package:flutter/material.dart';
import 'package:untitled4/core/theme/app_color/app_color.dart';

import '../../styles/text_style.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.keyboardType,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColor.gridGrayColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: widget.keyboardType,
        cursorColor: AppColor.whiteColor,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyles.interFont14W400White,
          border: InputBorder.none,
          icon: Icon(widget.icon, color: AppColor.whiteColor, size: 22),
        ),
      ),
    );
  }
}
