import 'package:bible_repository/src/enum/book_reference_id.dart';
import 'package:bible_repository/src/model/chapter_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required String name,
    @JsonKey(
      name: "reference_id",
      fromJson: _referenceFromJson,
      toJson: _referenceToJson,
    ) required BookReferenceId referenceId,
    required List<ChapterModel> chapters,
  }) = _BookModel;

  const BookModel._();

  factory BookModel.fromJson(Map<String, Object?> json) => _$BookModelFromJson(json);
}

//Todo: Remove this
BookReferenceId _referenceFromJson(String referenceString) {
  return BookReferenceId.fromString(referenceString);
}

//Todo: Remove this
String _referenceToJson(BookReferenceId? referenceId) => referenceId?.referenceId ?? "";
