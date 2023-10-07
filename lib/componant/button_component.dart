import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final double? textSize;

  ButtonComponent({
    required this.text,
    this.color,
    this.textColor,
    required this.onPressed,
    this.paddingHorizontal,
    this.paddingVertical,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 0, vertical: paddingVertical ?? 0),
      child: Container(
        width: MediaQuery.of(context)!.size.width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.blue,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize ?? 20.0,
              fontWeight: FontWeight.bold,
              color: textColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
