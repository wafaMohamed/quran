import 'package:flutter/material.dart';

import '../../../core/language/app_texts.dart';
import '../cover_page.dart';
import 'custom_pin_code.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoverPage(
      sizeChild: MediaQuery.of(context).size.height * 0.470,
      size2: MediaQuery.of(context).size.height * 0.400,
      title: AppTextArabic.confirmVerificationCode,
      subTitle: AppTextArabic.verificationCodeSentToEmail,
      child: const CustomPinField(),
    );
  }
}
