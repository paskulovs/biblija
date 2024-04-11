import 'package:bible_repository/src/enum/book_reference_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'book_model.dart';

part 'bible_model.freezed.dart';
part 'bible_model.g.dart';

@freezed
class BibleModel with _$BibleModel {
  const factory BibleModel({
    required String name,
    required List<BookModel> books,
  }) = _BibleModel;

  const BibleModel._();

  factory BibleModel.fromJson(Map<String, Object?> json) => _$BibleModelFromJson(json);

  BookModel? getBookByReferenceId(BookReferenceId referenceId) {
    return books.firstWhere((book) => book.referenceId == referenceId, orElse: null,);
  }
}