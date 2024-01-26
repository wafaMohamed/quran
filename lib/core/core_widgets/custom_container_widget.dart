import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final double borderRadius;
  final EdgeInsets padding;
  final Gradient? gradient;
  final String? imagePath;
  final double? height;
  final double? width;

  const CustomContainer({
    Key? key,
    this.child,
    this.backgroundColor,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.all(16.0),
    this.gradient,
    this.imagePath,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        gradient: gradient,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
