import 'package:bible_repository/bible_repository.dart';
import 'package:bible_repository/src/sources/json_repository.dart';
import 'package:riverpod/riverpod.dart';

final bibleRepositoryProvider =
    Provider.autoDispose<BibleRepository>((ref) => JsonRepository());
