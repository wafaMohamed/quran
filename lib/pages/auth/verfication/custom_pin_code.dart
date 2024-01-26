import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled4/core/core_widgets/buttons/custom_button.dart';
import 'package:untitled4/core/core_widgets/text_widget/text_button.dart';
import 'package:untitled4/core/core_widgets/vertical_spacing.dart';
import 'package:untitled4/core/language/app_texts.dart';
import 'package:untitled4/core/theme/app_color/app_color.dart';

import '../../../core/core_widgets/text_widget/custom_text.dart';
import '../../../core/styles/text_style.dart';

class CustomPinField extends StatelessWidget {
  const CustomPinField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextWidget(
              text: AppTextArabic.fakeMail,
              textDirection: TextDirection.rtl,
              style: TextStyles.interFont14W400White.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: AppColor.whiteColor,
                decorationThickness: 1.5,
              ),
            ),
            const VerticalSpacing(50),
            // pin code
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: PinCodeTextField(
                appContext: context,
                textStyle: TextStyles.interFont16W500White,
                cursorColor: AppColor.whiteColor,
                animationDuration: const Duration(milliseconds: 300),
                length: 4,
                onChanged: (value) {
                  // Handle PIN value change
                },
                onCompleted: (value) {
                  // Handle PIN input completion
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 40,
                  fieldWidth: 40,
                  inactiveFillColor: AppColor.gridGrayColor,
                  activeColor: AppColor.whiteColor,
                  selectedColor: AppColor.whiteColor,
                  inactiveColor: AppColor.gridGrayColor2,
                  borderWidth: 1,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: CustomTextButton(
                text: "  0:05 ${AppTextArabic.returnCode}",
                onPressed: () {},
              ),
            ),
            CustomButton(
              text: AppTextArabic.confirmCode,
              onPressed: () {},
              padding:
                  const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
            ),
          ],
        ),
      ),
    );
  }
}
