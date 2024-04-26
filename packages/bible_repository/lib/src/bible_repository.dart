import '../bible_repository.dart';

abstract class BibleRepository {
  Future<BibleModel> loadBible();
}