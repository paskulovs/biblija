import 'package:biblija/themes/default_dark_theme.dart';
import 'package:biblija/themes/default_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ThemeMode {
  dark,
  light,
  system;

  ThemeData get theme {
    switch(this) {
      case ThemeMode.dark:
        return darkTheme();
      case ThemeMode.light:
        return lightTheme();
      case ThemeMode.system:
        final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
        return brightness == Brightness.light ? lightTheme() : darkTheme();
    }
  }
}

class SelectedThemeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  void changeTheme(ThemeMode mode) {
    state = mode;
  }
}
