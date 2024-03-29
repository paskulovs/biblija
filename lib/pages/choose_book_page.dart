import 'package:bible_repository/bible_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseBookPage extends ConsumerWidget {
  const ChooseBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bibleBooks = ref.watch(bibleProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Choose bible book', style: TextStyle(color: Colors.white),),
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
        AsyncError(:final error) => Text(error.toString()),
        _ => Center(child: CircularProgressIndicator(),),
      },
    );
  }

}