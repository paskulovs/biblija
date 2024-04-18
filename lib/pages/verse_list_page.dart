import 'package:bible_repository/bible_repository.dart';
import 'package:biblija/state/notifiers/bible_state_notifier.dart';
import 'package:biblija/state/providers/bible_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VerseListPage extends ConsumerWidget {
  final String? selectedBook;
  final String? selectedChapter;

  const VerseListPage({
    super.key,
    required this.selectedBook,
    required this.selectedChapter,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bibleState = ref.watch(bibleStateProvider);
    return switch (bibleState) {
      AsyncData(:final value) => _buildScaffold(context, value),
      _ => const Center(
          child: CircularProgressIndicator(),
        ),
    };
  }

  Scaffold _buildScaffold(BuildContext context, BibleState bible) {
    final themeData = Theme.of(context);
    final book = bible.getBookByReferenceIdString(selectedBook);
    final chapter = book?.getChapterByNumber(int.parse(selectedChapter!));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.colorScheme.primary,
        title: Text("${book?.name} $selectedChapter"),
      ),
      body: ListView.separated(
        itemCount: chapter!.verses.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("${index + 1}. ${chapter.verses[index].text}"),
            contentPadding: EdgeInsets.zero,
            titleTextStyle: themeData.textTheme.bodyLarge,
            dense: true,
            onTap: () => _showReferenceDialog(context),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }

  _showReferenceDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("References"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    'John 13:1',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.blue),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    context.goNamed(
                      "verses",
                      pathParameters: {
                        "book": BookReferenceId.john.value,
                        "chapter": "13",
                      },
                    );
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Close'),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
