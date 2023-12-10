import 'package:flutter/material.dart';
import 'package:metabrick/main.dart';

class PressedNeumorphicButton extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  static const double offset = 2;
  static const double blurRadius = 5;
  static const double spreadRadius = 1;

  const PressedNeumorphicButton({super.key, required this.child, this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    MaterialColor themeColor = MyApp.of(context).themeColor;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Theme.of(context).colorScheme.background,
        gradient: LinearGradient(colors: [
          themeColor.shade700,
          themeColor.shade400,
        ], tileMode: TileMode.decal),
        boxShadow: [
          BoxShadow(
            color: themeColor.shade200,
            offset: const Offset(-offset, -offset),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: themeColor.shade800,
            offset: const Offset(offset, offset),
            blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    );
  }
}
