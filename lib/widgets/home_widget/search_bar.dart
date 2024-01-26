import 'package:flutter/material.dart';

import '../../core/core_widgets/field/custom_text_field.dart';

class SearchBarItem extends StatelessWidget {
  const SearchBarItem({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: text,
      icon: Icons.search,
      controller: TextEditingController(),
      keyboardType: TextInputType.text,
    );
  }
}
