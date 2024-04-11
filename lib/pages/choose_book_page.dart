import 'package:bible_repository/bible_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseBookPage extends ConsumerWidget {
  const ChooseBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bibleBooks = ref.watch(bibleProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Choose bible book',
        ),
      ),
      body: switch (bibleBooks) {
        AsyncData(:final value) => ListView.separated(
            itemCount: value.books.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("${index + 1}. ${value.books[index].name}"),
                onTap: () => context.goNamed(
                  "choose-chapter",
                  pathParameters: {"book": value.books[index].referenceId.name},
                ),
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
