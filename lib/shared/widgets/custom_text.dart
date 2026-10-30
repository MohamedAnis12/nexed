import 'package:flutter/material.dart';
import 'package:nexed/core/constants/app_color.dart';

class CustomText extends StatelessWidget {
  const new({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.color = AppColor.textPrimaryColor,
  });
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize,color: color));
  }
}