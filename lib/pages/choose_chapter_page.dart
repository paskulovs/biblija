import 'package:bible_repository/bible_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseChapterPage extends ConsumerWidget {
  final String? bookReferenceId;

  const ChooseChapterPage({super.key, required this.bookReferenceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bibleState = ref.watch(bibleProvider);
    return switch (bibleState) {
      AsyncData<BibleModel>(:final value) => _buildScaffold(context, value),
      AsyncError(:final error) => Text(error.toString()),
      _ => const Center(
          child: CircularProgressIndicator(),
        ),
    };
  }

  Scaffold _buildScaffold(BuildContext context, BibleModel bible) {
    final referenceId = bookReferenceId != null
        ? BookReferenceId.values.byName(bookReferenceId!)
        : null;
    final book =
        referenceId != null ? bible.getBookByReferenceId(referenceId) : null;
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
            child: GridTile(
              child: Text("${book.chapters[index].chapter}"),
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
