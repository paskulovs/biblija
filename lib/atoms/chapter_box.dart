import 'package:bible_repository/bible_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChapterBox extends StatelessWidget {
  final int chapter;
  final BookReferenceId book;

  const ChapterBox({
    super.key,
    required this.chapter,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        context.goNamed(
          'verses',
          pathParameters: {
            'book': book.value,
            'chapter': chapter.toString(),
          },
        );
      },
      child: Card(
        margin: const EdgeInsets.all(5),
        child: GridTile(
          child: Center(
            child: Text(
              chapter.toString(),
              style: themeData.textTheme.titleMedium,
            ),
          ),
        ),
      ),
    );
  }
}
