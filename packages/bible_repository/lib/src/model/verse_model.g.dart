// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerseModelImpl _$$VerseModelImplFromJson(Map<String, dynamic> json) =>
    _$VerseModelImpl(
      chapter: json['chapter'] as int,
      verse: json['verse'] as int,
      name: json['name'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$VerseModelImplToJson(_$VerseModelImpl instance) =>
    <String, dynamic>{
      'chapter': instance.chapter,
      'verse': instance.verse,
      'name': instance.name,
      'text': instance.text,
    };
