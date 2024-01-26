import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled4/core/routing/routes/app_routes_name.dart';
import 'package:untitled4/core/theme/app_color/app_color.dart';

import '../../../core/core_widgets/buttons/custom_button.dart';
import '../../../core/core_widgets/field/custom_text_form_field.dart';
import '../../../core/language/app_texts.dart';
import '../../../core/styles/space_manager.dart';

class SignUpFields extends StatelessWidget {
  const SignUpFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SpaceManager.sizedBox32h(context),
          //? fields:
          CustomTextFormField(
            hintText: AppTextArabic.enterName,
            keyboardType: TextInputType.name,
            icon: IconlyBold.user2,
            controller: TextEditingController(),
          ),
          SpaceManager.sizedBox32h(context),
          CustomTextFormField(
            hintText: AppTextArabic.enterEmail,
            keyboardType: TextInputType.emailAddress,
            icon: IconlyBold.message,
            controller: TextEditingController(),
          ),
          SpaceManager.sizedBox32h(context),
          CustomTextFormField(
            hintText: AppTextArabic.enterPassword,
            icon: IconlyBold.lock,
            controller: TextEditingController(),
            keyboardType: TextInputType.visiblePassword,
            isPassword: true, // Set to true for password field
          ),
          SpaceManager.sizedBox32h(context),
          CustomTextFormField(
            hintText: AppTextArabic.checkPassword,
            icon: IconlyBold.lock,
            controller: TextEditingController(),
            keyboardType: TextInputType.visiblePassword,
            isPassword: true, // Set to true for password field
          ),
          SpaceManager.sizedBox32h(context),
          //? buttons
          CustomButton(
            text: AppTextArabic.signIn,
            onPressed: () {
              GoRouter.of(context)
                  .pushNamed(AppRoutesNames.verificationPageRoute);
            },
          ),
          SpaceManager.sizedBox25h(context),
          CustomButton(
            text: AppTextArabic.alreadyHaveAccount,
            buttonColor: AppColor.grayColor,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          SpaceManager.sizedBox32h(context),
        ],
      ),
    );
  }
}
