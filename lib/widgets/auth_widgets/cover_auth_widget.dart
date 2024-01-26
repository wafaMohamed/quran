import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../core/assets/app_assets/app_assets.dart';

class CoverAuthPage extends StatelessWidget {
  const CoverAuthPage({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Image.asset(
            AppAssets.ramadanPngAsset,
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
            bottom: 500,
            child: child,
          ),
        ],
      ),
    );
  }
}
