import 'package:flutter/material.dart';

const defaultPrimaryColor = Color.fromRGBO(76, 15, 14, 1);
const backgroundColor = Colors.white;
const onBackgroundColor = Color.fromRGBO(51, 51, 51, 1);
const surfaceColor = Color.fromRGBO(249, 249, 249, 1);
const onSurfaceColor = Color.fromRGBO(51, 51, 51, 1);
const dividerColor = Color.fromRGBO(218, 218, 218, 1);

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: defaultPrimaryColor,
    colorScheme: const ColorScheme.light(
      primary: defaultPrimaryColor,
      background: backgroundColor,
      surface: surfaceColor,
      onSurface: onSurfaceColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
    textTheme: ThemeData.light().textTheme.apply(
          bodyColor: onBackgroundColor,
          displayColor: onBackgroundColor,
        ),
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: defaultPrimaryColor,
          foregroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 4,
          surfaceTintColor: Colors.transparent,
        ),
    dividerColor: dividerColor,
    dividerTheme: ThemeData.light().dividerTheme.copyWith(color: dividerColor),
    listTileTheme: ThemeData.light().listTileTheme.copyWith(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          selectedColor: onBackgroundColor,
        ),
  );
}
