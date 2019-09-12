import 'package:flutter/material.dart';

Widget viewSelectionText(String text, Color color, bool isSelected) {
  TextStyle textStyle = TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal);
  return Text(text, style: textStyle);
}
