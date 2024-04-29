import 'package:flutter/material.dart';

const defaultPrimaryColor = Color.fromRGBO(76, 15, 14, 1);
const backgroundColor = Color.fromRGBO(28, 28, 30, 1);
const onBackgroundColor = Color.fromRGBO(142, 142, 147, 1);
const surfaceColor = Color.fromRGBO(44, 44, 46, 1);
const onSurfaceColor = Colors.white;
const dividerColor = Color.fromRGBO(142, 142, 147, 1);

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: defaultPrimaryColor,
    colorScheme: const ColorScheme.dark(
      primary: defaultPrimaryColor,
      background: backgroundColor,
      surface: surfaceColor,
      onSurface: onSurfaceColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
    textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          backgroundColor: defaultPrimaryColor,
          foregroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 4,
          surfaceTintColor: Colors.transparent,
        ),
    dividerColor: dividerColor,
    dividerTheme: ThemeData.dark().dividerTheme.copyWith(color: dividerColor),
    listTileTheme: ThemeData.dark().listTileTheme.copyWith(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      selectedColor: Colors.white,
    )
  );
}
