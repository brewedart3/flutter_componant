import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;

  ButtonComponent({
    required this.text,
    this.color,
    this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.blue,
      ),
      child: Text(text,style:  TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: textColor ?? Colors.white,
      ),),
    );
  }
}
