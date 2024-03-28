import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../core/assets/app_assets/app_assets.dart';
import 'login_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.audioCoverAsset,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 120,
              left: MediaQuery.of(context).size.width / 3,
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.eqra2LogoAsset,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.290,
              start: 0,
              end: 0,
              child: const Center(
                child: LoginFields(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
