import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../circular_progress_indicator/circular_progress_indicator.dart';

class CustomSvgPicture extends StatelessWidget {
  final String path;
  final Color? color;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? scale;
  final Alignment? alignment;
  final double? opacity;

  const CustomSvgPicture({
    Key? key,
    required this.path,
    this.color,
    this.height,
    this.width,
    this.fit,
    this.scale,
    this.alignment,
    this.opacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      color: color,
      height: height,
      width: width,
      fit: fit ?? BoxFit.contain,
      alignment: alignment ?? Alignment.center,
      placeholderBuilder: (BuildContext context) =>
          const CustomCircularProgressIndicator(),
      matchTextDirection: true,
      allowDrawingOutsideViewBox: false,
      semanticsLabel: 'SVG Image',
      excludeFromSemantics: false,
    );
  }
}
