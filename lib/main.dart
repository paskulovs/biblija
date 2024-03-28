import 'package:bible_repository/bible_repository.dart';
import 'package:biblija/state/providers/selected_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTheme = ref.watch(selectedThemeProvider).theme;
    return MaterialApp(
      title: 'Biblija: Simple Bible',
      theme: selectedTheme,
      home: const MyHomePage(title: 'Choose bible book'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final bibleBooks = ref.watch(bibleProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
      ),
      body: switch (bibleBooks) {
        AsyncData(:final value) => ListView.separated(
            itemCount: value.books.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(value.books[index].name),
                onTap: () {},
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        AsyncError(:final error, :final stackTrace) => Text(error.toString()),
        _ => Center(child: CircularProgressIndicator(),),
      },
    );
  }
}
