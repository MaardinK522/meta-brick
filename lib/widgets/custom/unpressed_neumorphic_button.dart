import 'package:flutter/material.dart';
import 'package:metabrick/main.dart';

class UnpressedNeumorphicButton extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  static const double offset = 2;
  static const double blurRadius = 5;
  static const double spreadRadius = 1;

  const UnpressedNeumorphicButton({super.key, required this.child, this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    MaterialColor themeColor = MyApp.of(context).themeColor;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Theme.of(context).colorScheme.background,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            themeColor.shade300,
            themeColor.shade400,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: themeColor.shade400,
            offset: const Offset(-offset, -offset),
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
          ),
          BoxShadow(
            color: themeColor.shade800,
            offset: const Offset(offset + 1, offset + 1),
            blurRadius: blurRadius,
            spreadRadius: spreadRadius - 1,
          ),
        ],
      ),
      child: child,
    );
  }
}
