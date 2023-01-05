import 'package:flutter/material.dart';

class CustomizableNeuButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final double textSize;
  final double hPadding;
  final double vPadding;

  final VoidCallback onPressed;
  final double boxRadius;
  const CustomizableNeuButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    this.boxRadius = 40,
    this.textSize = 17,
    this.hPadding = 40,
    this.vPadding = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(boxRadius),
          color: backgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.white54,
              blurRadius: 10,
              offset: Offset(-5, -5),
            ),
            BoxShadow(
              color: Colors.black87,
              blurRadius: 10,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}
