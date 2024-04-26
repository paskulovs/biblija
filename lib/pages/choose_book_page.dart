import 'package:biblija/molecules/title_bar_page_scaffold.dart';
import 'package:biblija/state/providers/bible_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseBookPage extends ConsumerWidget {
  const ChooseBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bibleBooks = ref.watch(bibleStateProvider);
    return TitleBarPageScaffold(
      title: 'Choose bible book',
      showBackButton: false,
      body: switch (bibleBooks) {
        AsyncData(:final value) => ListView.separated(
            itemCount: value.books.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('${index + 1}. ${value.books[index].name}'),
                onTap: () {
                  context.goNamed(
                    'chapters',
                    pathParameters: {
                      'book': value.books[index].referenceId.value
                    },
                  );
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        AsyncError(:final error, :final stackTrace) => Column(
            children: [Text(error.toString()), Text(stackTrace.toString())],
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }
}
