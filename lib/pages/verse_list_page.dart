import 'package:bible_repository/bible_repository.dart';
import 'package:biblija/atoms/hint_dialog.dart';
import 'package:biblija/atoms/quick_navigation_header.dart';
import 'package:biblija/molecules/title_bar_page_scaffold.dart';
import 'package:biblija/state/notifiers/bible_state_notifier.dart';
import 'package:biblija/state/providers/bible_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:biblija/config/constants.dart';

class VerseListPage extends ConsumerWidget {
  final String? selectedBook;
  final String? selectedChapter;
  final String? selectedVerse;

  const VerseListPage({
    super.key,
    required this.selectedBook,
    required this.selectedChapter,
    required this.selectedVerse,
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

  Widget _buildScaffold(BuildContext context, BibleState bible) {
    final themeData = Theme.of(context);
    final book = bible.getBookByReferenceIdString(selectedBook);
    final chapter = book?.getChapterByNumber(int.parse(selectedChapter!));
    final itemScrollController = ItemScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) => _jumpToVerse(
          itemScrollController,
        ));
    return TitleBarPageScaffold(
      title: '${book?.name} $selectedChapter',
      headerWidget: _quickNavigationHeader(context, book!, chapter!),
      body: ScrollablePositionedList.separated(
        itemCount: chapter!.verses.length,
        itemScrollController: itemScrollController,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${index + 1}. ${chapter.verses[index].text}'),
            contentPadding: EdgeInsets.zero,
            titleTextStyle: themeData.textTheme.bodyLarge,
            dense: true,
            onTap: () => _showReferenceDialog(context, itemScrollController),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }

  _jumpToVerse(ItemScrollController itemScrollController) {
    if (selectedVerse != null) {
      itemScrollController.jumpTo(index: int.parse(selectedVerse!) - 1);
    }
  }

  PreferredSizeWidget _quickNavigationHeader(
    BuildContext context,
    BookState book,
    ChapterState chapter,
  ) {
    return PreferredSize(
      preferredSize: Constants.defaultHeaderSize,
      child: QuickNavigationHeader(
        text: '${chapter.chapter}/${book.chapters.length}',
        onTapLeft: () {
          if (chapter.chapter > 1) {
            _goToBibleLocation(
              context,
              book.referenceId,
              chapter.chapter - 1,
              1,
            );
          }
        },
        onTapRight: () {
          if (chapter.chapter < book.chapters.length) {
            _goToBibleLocation(
              context,
              book.referenceId,
              chapter.chapter + 1,
              1,
            );
          }
        },
      ),
    );
  }

  void _goToBibleLocation(
    BuildContext context,
    BookReferenceId book,
    int chapter,
    int verse,
  ) {
    context.pushNamed('verses', pathParameters: {
      'book': book.value,
      'chapter': chapter.toString(),
    }, queryParameters: {
      'verse': verse.toString()
    });
  }

  void _showReferenceDialog(BuildContext context, itemScrollController) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return HintDialog(
              title: 'References',
              body: GestureDetector(
                child: Text(
                  'John 13:12',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _goToBibleLocation(
                    context,
                    BookReferenceId.john,
                    13,
                    12,
                  );
                },
              ));
        });
  }
}
