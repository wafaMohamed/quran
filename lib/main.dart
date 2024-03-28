import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/chatbot.dart';
import 'package:untitled4/choose.dart';
import 'package:untitled4/pages/auth/login/login_page.dart';

import 'core/theme/app_color/app_color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const ChatBotQuran(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.brownColor,
        useMaterial3: true,
      ),
    );
  }
}
// تحدي الاتطبيقات القرأنية
// الأمير فيصل بن ندر
// تحت رعاية صاحب السمو الملكي
