import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.borderRadius,
    this.width,
    this.icon,
    this.height = 44.0,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null ? Icon(
              icon,
              color: Colors.black,
            ) : Container(),
            const SizedBox(width: 8.0),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}