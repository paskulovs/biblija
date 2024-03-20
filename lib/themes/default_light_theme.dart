import 'package:flutter/material.dart';

const defaultPrimaryColor = Color.fromRGBO(26, 102, 34, 1);
const backgroundColor = Colors.white;
const onBackgroundColor = Color.fromRGBO(51, 51, 51, 1);
const surfaceColor = Color.fromRGBO(249, 249, 249, 1);
const onSurfaceColor = Color.fromRGBO(51, 51, 51, 1);

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: defaultPrimaryColor,
      colorScheme: const ColorScheme.light(
        primary: defaultPrimaryColor,
        background: backgroundColor,
        surface: surfaceColor,
        onSurface: onSurfaceColor,
      ));
}
