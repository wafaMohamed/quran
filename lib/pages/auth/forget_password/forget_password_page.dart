import 'package:flutter/material.dart';

import '../../../core/language/app_texts.dart';
import '../cover_page.dart';
import 'forget_password_field.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CoverPage(
      sizeChild: MediaQuery.of(context).size.height * 0.300,
      size2: MediaQuery.of(context).size.height * 0.420,
      title: AppTextArabic.forgetPassword,
      subTitle: AppTextArabic.donNotWorry,
      child: const ForgetPasswordField(),
    );
  }
}
