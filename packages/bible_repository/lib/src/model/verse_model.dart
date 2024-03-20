import 'package:freezed_annotation/freezed_annotation.dart';

part 'verse_model.freezed.dart';
part 'verse_model.g.dart';

@freezed
class VerseModel with _$VerseModel {
  const factory VerseModel({
    required int chapter,
    required int verse,
    required String name,
    required String text,
  }) = _VerseModel;

  const VerseModel._();

  factory VerseModel.fromJson(Map<String, Object?> json) => _$VerseModelFromJson(json);
}
