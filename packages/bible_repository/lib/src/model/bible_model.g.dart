// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BibleModelImpl _$$BibleModelImplFromJson(Map<String, dynamic> json) =>
    _$BibleModelImpl(
      name: json['name'] as String,
      books: (json['books'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BibleModelImplToJson(_$BibleModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'books': instance.books,
    };
