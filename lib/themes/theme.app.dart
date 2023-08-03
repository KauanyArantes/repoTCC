import 'package:flutter/material.dart';

class AppTheme {
  static final Color primaryColor = Color(0xFF5D84E0);
  static final Color secondaryColor = Color(0xFF5371C2);
  static final Color accentColor = Color(0xFFF9A320);
  static final Color textColor = Colors.white;
  static final Color backgroundColor = Color(0xFFF9A320);

  static final TextStyle titleStyle = TextStyle(
    fontSize: 24,
    color: textColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  );

  static final TextStyle subtitleStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontFamily: 'Roboto',
  );
}
