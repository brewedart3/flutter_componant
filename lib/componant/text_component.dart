import 'package:flutter/material.dart';

class TextCompo extends StatelessWidget {


  final String text;
  final Color? textColor;
  final double? textSize;
  // final TextEditingController controller;

  TextCompo({
    required this.text,
    this.textColor,
    this.textSize,
    // required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
       text,
      style: TextStyle(
        fontSize: textSize ?? 24.0,
        fontWeight: FontWeight.normal,
        color: textColor ?? Colors.black,
      ),
    );

  }
}
