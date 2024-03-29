import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:untitled4/able/home.dart';
import 'package:untitled4/choose.dart';
import 'package:untitled4/disable/home.dart';
import 'package:untitled4/pages/home/home_page.dart';
import 'package:untitled4/song.dart';

import '../../../able/speak.dart';
import '../../../core/core_widgets/buttons/custom_button.dart';
import '../../../core/core_widgets/field/custom_text_form_field.dart';
import '../../../core/core_widgets/text_widget/text_button.dart';
import '../../../core/language/app_texts.dart';
import '../../../core/styles/space_manager.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /* CustomTextWidget(
            text: AppTextArabic.welcomeInQuranApp,
            textDirection: TextDirection.rtl,
            style: TextStyles.interFont20W600White),
        SpaceManager.sizedBox5h(context),
        CustomTextWidget(
            text: AppTextArabic.startWithQuran,
            textDirection: TextDirection.rtl,
            style: TextStyles.interFont14W400White),
        SpaceManager.sizedBox32h(context), */
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
        FittedBox(
          fit: BoxFit.contain,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextButton(
                text: AppTextArabic.createNewAccount,
                onPressed: () {
                  Get.to(HomeAblePeople());
                  /* GoRouter.of(context)
                      .pushNamed(AppRoutesNames.signUpCoverPageRoute); */
                },
              ),
              CustomTextButton(
                text: AppTextArabic.forgetPassword,
                onPressed: () {
                  Get.to(HomeDisable());
                  /* GoRouter.of(context)
                      .push(AppRoutesNames.forgetPasswordPageRoute); */
                },
              ),
            ],
          ),
        ),
        CustomButton(
          text: AppTextArabic.signIn,
          onPressed: () {
            Get.to(ChooseCategory());
            /* GoRouter.of(context).push(AppRoutesNames.homePageRoute); */
          },
        ),
      ],
    );
  }
}
