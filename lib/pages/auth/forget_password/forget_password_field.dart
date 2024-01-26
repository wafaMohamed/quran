import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../core/core_widgets/buttons/custom_button.dart';
import '../../../core/core_widgets/field/custom_text_form_field.dart';
import '../../../core/language/app_texts.dart';
import '../../../core/styles/space_manager.dart';

class ForgetPasswordField extends StatelessWidget {
  const ForgetPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SpaceManager.sizedBox32h(context),
        //? email field
        CustomTextFormField(
          hintText: AppTextArabic.enterEmail,
          keyboardType: TextInputType.emailAddress,
          icon: IconlyBold.message,
          controller: TextEditingController(),
        ),
        SpaceManager.sizedBox50h(context),
        //? buttons
        CustomButton(
          padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
          text: AppTextArabic.retrievePassword,
          onPressed: () {},
        ),
      ],
    );
  }
}
