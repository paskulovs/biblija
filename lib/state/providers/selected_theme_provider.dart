import 'package:biblija/state/notifiers/selected_theme_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedThemeProvider =
    NotifierProvider<SelectedThemeNotifier, ThemeMode>(
        () => SelectedThemeNotifier());
