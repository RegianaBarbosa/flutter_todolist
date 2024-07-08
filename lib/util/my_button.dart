import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  MyButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: backgroundColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Define o borderRadius como 8
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
