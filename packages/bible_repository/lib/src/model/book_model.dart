import 'package:bible_repository/src/model/chapter_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required String name,
    required List<ChapterModel> chapters,
  }) = _BookModel;

  const BookModel._();

  factory BookModel.fromJson(Map<String, Object?> json) => _$BookModelFromJson(json);
}

typedef BibleModel = List<BookModel>;