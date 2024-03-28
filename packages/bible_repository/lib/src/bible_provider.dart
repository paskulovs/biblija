import 'dart:async';

import 'package:bible_repository/bible_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'model/bible_model.dart';

class BibleNotifier extends AutoDisposeAsyncNotifier<BibleModel> {
  final BibleRepository _repository = BibleRepository();

  @override
  FutureOr<BibleModel> build() {
    return _loadDefaultBible();
  }

  Future<BibleModel> _loadDefaultBible() async {
    return await _repository.readJsonFile("lib/assets/kjv.json") ?? BibleModel(name: "", books: [],);
  }
}

final bibleProvider = AsyncNotifierProvider.autoDispose<BibleNotifier, BibleModel>(BibleNotifier.new);