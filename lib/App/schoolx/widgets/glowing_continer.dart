import 'package:flutter/material.dart';

class GlowingContiner extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  final double blurRadius;
  final double spreadRadius;
  final Color boxShadowColor;
  final double borderRadius;

  const GlowingContiner({
    Key? key,
    this.height,
    this.width,
    required this.child,
    this.color,
    required this.borderRadius,
    required this.boxShadowColor,
    required this.blurRadius,
    required this.spreadRadius,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
            color: boxShadowColor,
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
