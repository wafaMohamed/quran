import 'package:flutter/material.dart';

class CustomImageAsset extends StatelessWidget {
  final String path;
  final Color? color;
  final double? height;
  final double? width;
  final BoxFit fit;
  final double? scale;
  final Alignment? alignment;
  final double? opacity;

  const CustomImageAsset({
    Key? key,
    required this.path,
    this.color,
    this.height,
    this.width,
    required this.fit,
    this.scale,
    this.alignment,
    this.opacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      color: color,
      height: height,
      width: width,
      fit: fit ?? BoxFit.cover,
      scale: scale,
      alignment: alignment ?? Alignment.center,
      filterQuality: FilterQuality.low,
      colorBlendMode: BlendMode.srcOver,
      gaplessPlayback: false,
      frameBuilder: (BuildContext context, Widget child, int? frame,
          bool wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedOpacity(
          child: child,
          opacity: opacity ?? 1.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      },
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return const Icon(Icons.error);
      },
    );
  }
}
