// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bible_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BibleModel _$BibleModelFromJson(Map<String, dynamic> json) {
  return _BibleModel.fromJson(json);
}

/// @nodoc
mixin _$BibleModel {
  String get name => throw _privateConstructorUsedError;
  List<BookModel> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BibleModelCopyWith<BibleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleModelCopyWith<$Res> {
  factory $BibleModelCopyWith(
          BibleModel value, $Res Function(BibleModel) then) =
      _$BibleModelCopyWithImpl<$Res, BibleModel>;
  @useResult
  $Res call({String name, List<BookModel> books});
}

/// @nodoc
class _$BibleModelCopyWithImpl<$Res, $Val extends BibleModel>
    implements $BibleModelCopyWith<$Res> {
  _$BibleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BibleModelImplCopyWith<$Res>
    implements $BibleModelCopyWith<$Res> {
  factory _$$BibleModelImplCopyWith(
          _$BibleModelImpl value, $Res Function(_$BibleModelImpl) then) =
      __$$BibleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<BookModel> books});
}

/// @nodoc
class __$$BibleModelImplCopyWithImpl<$Res>
    extends _$BibleModelCopyWithImpl<$Res, _$BibleModelImpl>
    implements _$$BibleModelImplCopyWith<$Res> {
  __$$BibleModelImplCopyWithImpl(
      _$BibleModelImpl _value, $Res Function(_$BibleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? books = null,
  }) {
    return _then(_$BibleModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BibleModelImpl extends _BibleModel {
  const _$BibleModelImpl(
      {required this.name, required final List<BookModel> books})
      : _books = books,
        super._();

  factory _$BibleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BibleModelImplFromJson(json);

  @override
  final String name;
  final List<BookModel> _books;
  @override
  List<BookModel> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'BibleModel(name: $name, books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BibleModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BibleModelImplCopyWith<_$BibleModelImpl> get copyWith =>
      __$$BibleModelImplCopyWithImpl<_$BibleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BibleModelImplToJson(
      this,
    );
  }
}

abstract class _BibleModel extends BibleModel {
  const factory _BibleModel(
      {required final String name,
      required final List<BookModel> books}) = _$BibleModelImpl;
  const _BibleModel._() : super._();

  factory _BibleModel.fromJson(Map<String, dynamic> json) =
      _$BibleModelImpl.fromJson;

  @override
  String get name;
  @override
  List<BookModel> get books;
  @override
  @JsonKey(ignore: true)
  _$$BibleModelImplCopyWith<_$BibleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
