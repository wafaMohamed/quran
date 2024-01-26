import 'package:flutter/material.dart';
import 'package:untitled4/pages/auth/sign_up/sign_up_feilds.dart';

import '../../../core/language/app_texts.dart';
import '../cover_page.dart';

class SignUpCoverPage extends StatelessWidget {
  const SignUpCoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoverPage(
      sizeChild: MediaQuery.of(context).size.height * 0.470,
      size2: MediaQuery.of(context).size.height * 0.400,
      title: AppTextArabic.createNewAccount,
      subTitle: AppTextArabic.enterInfo,
      child: const SignUpFields(),
    );
  }
}
