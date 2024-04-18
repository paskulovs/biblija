import 'package:biblija/config/app_router_config.dart';
import 'package:biblija/state/providers/selected_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTheme = ref.watch(selectedThemeProvider).theme;
    return MaterialApp.router(
      title: 'Biblija: Simple Bible',
      theme: selectedTheme,
      routerConfig: AppRouterConfig.router,
    );
  }
}
