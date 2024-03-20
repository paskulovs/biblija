import 'package:bible_repository/src/model/verse_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_model.freezed.dart';
part 'chapter_model.g.dart';

@freezed
class ChapterModel with _$ChapterModel {
  const factory ChapterModel({
    required int chapter,
    required List<VerseModel> verses,
  }) = _ChapterModel;

  const ChapterModel._();

  factory ChapterModel.fromJson(Map<String, Object?> json) => _$ChapterModelFromJson(json);
}