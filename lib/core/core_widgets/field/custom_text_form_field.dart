import 'package:flutter/material.dart';
import 'package:untitled4/core/theme/app_color/app_color.dart';

import '../../styles/text_style.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
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
      child: TextFormField(
        keyboardType: widget.keyboardType,
        cursorColor: AppColor.whiteColor,
        controller: widget.controller,
        obscureText: widget.isPassword && !isPasswordVisible,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyles.interFont14W400White,
          border: InputBorder.none,
          icon: Icon(widget.icon, color: AppColor.whiteColor, size: 22),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColor.whiteColor,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
