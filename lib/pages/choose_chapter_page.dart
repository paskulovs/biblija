import 'package:biblija/state/notifiers/bible_state_notifier.dart';
import 'package:biblija/state/providers/bible_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseChapterPage extends ConsumerWidget {
  final String? bookReferenceId;

  const ChooseChapterPage({super.key, required this.bookReferenceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bibleState = ref.watch(bibleStateProvider);
    return switch (bibleState) {
      AsyncData<BibleState>(:final value) =>
        _buildScaffold(context, ref, value),
      AsyncError(:final error) => Text(error.toString()),
      _ => const Center(
          child: CircularProgressIndicator(),
        ),
    };
  }

  Scaffold _buildScaffold(
      BuildContext context, WidgetRef ref, BibleState bible) {
    final themeData = Theme.of(context);
    final book = bible.getBookByReferenceIdString(bookReferenceId);
    if (book == null) {
      return Scaffold(
        appBar: _appBar(context, 'Bad Reference'),
        body: const Center(
          child:
              Text("You have no book in this bible with given reference id."),
        ),
      );
    }
    return Scaffold(
      appBar: _appBar(context, 'Choose Chapter'),
      body: GridView.builder(
        itemCount: book.chapters.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              context.goNamed(
                "verses",
                pathParameters: {"book": book.referenceId.value,"chapter": book.chapters[index].chapter.toString()},
              );
            },
            child: Card(
              margin: const EdgeInsets.all(5),
              child: GridTile(
                child: Center(
                  child: Text(
                    "${book.chapters[index].chapter}",
                    style: themeData.textTheme.titleMedium,
                  ),
                ),
              ),
            ),
          );
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(title),
    );
  }
}
