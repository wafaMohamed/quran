import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class LocalImage extends StatelessWidget {
  final String path;
  final double scale;
  final BoxFit? fit;
  final double? height;
  final double? width;

  const LocalImage(
      {super.key,
      required this.path,
      this.scale = 1,
       this.fit,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Image.network(
            path,
            scale: scale,
            height: height,
            width: width,
            fit: fit,
          )
        : Image.asset(
            path,
            scale: scale,
            height: height,
            width: width,
            fit: fit,
          );
  }
}
