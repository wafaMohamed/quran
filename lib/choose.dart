import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled4/able/home.dart';
import 'package:untitled4/core/theme/app_color/app_color.dart';
import 'package:untitled4/disable/home.dart';

import '../../../core/assets/app_assets/app_assets.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.ramadanPngAsset,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Get.to(HomeDisable()),
                  child: Container(
                    width: 200,
                    height: 50,
                    color: AppColor.brownColor,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'لذوي الهمم',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Get.to(HomeAblePeople()),
                  child: Container(
                    width: 200,
                    height: 50,
                    color: AppColor.brownColor,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'for non arabic speakers',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
