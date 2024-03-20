import 'package:flutter/material.dart';

const defaultPrimaryColor = Color.fromRGBO(26, 102, 34, 1);
const backgroundColor = Color.fromRGBO(28, 28, 30, 1);
const onBackgroundColor = Color.fromRGBO(142, 142, 147, 1);
const surfaceColor = Color.fromRGBO(44, 44, 46, 1);
const onSurfaceColor = Colors.white;

ThemeData darkTheme() {
  return ThemeData(
      brightness: Brightness.dark,
      primaryColor: defaultPrimaryColor,
      colorScheme: const ColorScheme.dark(
        primary: defaultPrimaryColor,
        background: backgroundColor,
        surface: surfaceColor,
        onSurface: onSurfaceColor,
      ));
}
