// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bible_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerseState {
  int get chapter => throw _privateConstructorUsedError;
  int get verse => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerseStateCopyWith<VerseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseStateCopyWith<$Res> {
  factory $VerseStateCopyWith(
          VerseState value, $Res Function(VerseState) then) =
      _$VerseStateCopyWithImpl<$Res, VerseState>;
  @useResult
  $Res call({int chapter, int verse, String name, String text});
}

/// @nodoc
class _$VerseStateCopyWithImpl<$Res, $Val extends VerseState>
    implements $VerseStateCopyWith<$Res> {
  _$VerseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? verse = null,
    Object? name = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerseStateImplCopyWith<$Res>
    implements $VerseStateCopyWith<$Res> {
  factory _$$VerseStateImplCopyWith(
          _$VerseStateImpl value, $Res Function(_$VerseStateImpl) then) =
      __$$VerseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chapter, int verse, String name, String text});
}

/// @nodoc
class __$$VerseStateImplCopyWithImpl<$Res>
    extends _$VerseStateCopyWithImpl<$Res, _$VerseStateImpl>
    implements _$$VerseStateImplCopyWith<$Res> {
  __$$VerseStateImplCopyWithImpl(
      _$VerseStateImpl _value, $Res Function(_$VerseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? verse = null,
    Object? name = null,
    Object? text = null,
  }) {
    return _then(_$VerseStateImpl(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerseStateImpl extends _VerseState with DiagnosticableTreeMixin {
  const _$VerseStateImpl(
      {required this.chapter,
      required this.verse,
      required this.name,
      required this.text})
      : super._();

  @override
  final int chapter;
  @override
  final int verse;
  @override
  final String name;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VerseState(chapter: $chapter, verse: $verse, name: $name, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VerseState'))
      ..add(DiagnosticsProperty('chapter', chapter))
      ..add(DiagnosticsProperty('verse', verse))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseStateImpl &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chapter, verse, name, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseStateImplCopyWith<_$VerseStateImpl> get copyWith =>
      __$$VerseStateImplCopyWithImpl<_$VerseStateImpl>(this, _$identity);
}

abstract class _VerseState extends VerseState {
  const factory _VerseState(
      {required final int chapter,
      required final int verse,
      required final String name,
      required final String text}) = _$VerseStateImpl;
  const _VerseState._() : super._();

  @override
  int get chapter;
  @override
  int get verse;
  @override
  String get name;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$VerseStateImplCopyWith<_$VerseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChapterState {
  int get chapter => throw _privateConstructorUsedError;
  List<VerseState> get verses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterStateCopyWith<ChapterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterStateCopyWith<$Res> {
  factory $ChapterStateCopyWith(
          ChapterState value, $Res Function(ChapterState) then) =
      _$ChapterStateCopyWithImpl<$Res, ChapterState>;
  @useResult
  $Res call({int chapter, List<VerseState> verses});
}

/// @nodoc
class _$ChapterStateCopyWithImpl<$Res, $Val extends ChapterState>
    implements $ChapterStateCopyWith<$Res> {
  _$ChapterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? verses = null,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      verses: null == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterStateImplCopyWith<$Res>
    implements $ChapterStateCopyWith<$Res> {
  factory _$$ChapterStateImplCopyWith(
          _$ChapterStateImpl value, $Res Function(_$ChapterStateImpl) then) =
      __$$ChapterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chapter, List<VerseState> verses});
}

/// @nodoc
class __$$ChapterStateImplCopyWithImpl<$Res>
    extends _$ChapterStateCopyWithImpl<$Res, _$ChapterStateImpl>
    implements _$$ChapterStateImplCopyWith<$Res> {
  __$$ChapterStateImplCopyWithImpl(
      _$ChapterStateImpl _value, $Res Function(_$ChapterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? verses = null,
  }) {
    return _then(_$ChapterStateImpl(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      verses: null == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<VerseState>,
    ));
  }
}

/// @nodoc

class _$ChapterStateImpl extends _ChapterState with DiagnosticableTreeMixin {
  const _$ChapterStateImpl(
      {required this.chapter, required final List<VerseState> verses})
      : _verses = verses,
        super._();

  @override
  final int chapter;
  final List<VerseState> _verses;
  @override
  List<VerseState> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterState(chapter: $chapter, verses: $verses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChapterState'))
      ..add(DiagnosticsProperty('chapter', chapter))
      ..add(DiagnosticsProperty('verses', verses));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterStateImpl &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chapter, const DeepCollectionEquality().hash(_verses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterStateImplCopyWith<_$ChapterStateImpl> get copyWith =>
      __$$ChapterStateImplCopyWithImpl<_$ChapterStateImpl>(this, _$identity);
}

abstract class _ChapterState extends ChapterState {
  const factory _ChapterState(
      {required final int chapter,
      required final List<VerseState> verses}) = _$ChapterStateImpl;
  const _ChapterState._() : super._();

  @override
  int get chapter;
  @override
  List<VerseState> get verses;
  @override
  @JsonKey(ignore: true)
  _$$ChapterStateImplCopyWith<_$ChapterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookState {
  String get name => throw _privateConstructorUsedError;
  BookReferenceId get referenceId => throw _privateConstructorUsedError;
  List<ChapterState> get chapters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookStateCopyWith<BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
  @useResult
  $Res call(
      {String name, BookReferenceId referenceId, List<ChapterState> chapters});
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? referenceId = null,
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as BookReferenceId,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookStateImplCopyWith<$Res>
    implements $BookStateCopyWith<$Res> {
  factory _$$BookStateImplCopyWith(
          _$BookStateImpl value, $Res Function(_$BookStateImpl) then) =
      __$$BookStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, BookReferenceId referenceId, List<ChapterState> chapters});
}

/// @nodoc
class __$$BookStateImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$BookStateImpl>
    implements _$$BookStateImplCopyWith<$Res> {
  __$$BookStateImplCopyWithImpl(
      _$BookStateImpl _value, $Res Function(_$BookStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? referenceId = null,
    Object? chapters = null,
  }) {
    return _then(_$BookStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as BookReferenceId,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterState>,
    ));
  }
}

/// @nodoc

class _$BookStateImpl extends _BookState with DiagnosticableTreeMixin {
  const _$BookStateImpl(
      {required this.name,
      required this.referenceId,
      required final List<ChapterState> chapters})
      : _chapters = chapters,
        super._();

  @override
  final String name;
  @override
  final BookReferenceId referenceId;
  final List<ChapterState> _chapters;
  @override
  List<ChapterState> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookState(name: $name, referenceId: $referenceId, chapters: $chapters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('referenceId', referenceId))
      ..add(DiagnosticsProperty('chapters', chapters));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, referenceId,
      const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookStateImplCopyWith<_$BookStateImpl> get copyWith =>
      __$$BookStateImplCopyWithImpl<_$BookStateImpl>(this, _$identity);
}

abstract class _BookState extends BookState {
  const factory _BookState(
      {required final String name,
      required final BookReferenceId referenceId,
      required final List<ChapterState> chapters}) = _$BookStateImpl;
  const _BookState._() : super._();

  @override
  String get name;
  @override
  BookReferenceId get referenceId;
  @override
  List<ChapterState> get chapters;
  @override
  @JsonKey(ignore: true)
  _$$BookStateImplCopyWith<_$BookStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BibleState {
  String get name => throw _privateConstructorUsedError;
  List<BookState> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BibleStateCopyWith<BibleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleStateCopyWith<$Res> {
  factory $BibleStateCopyWith(
          BibleState value, $Res Function(BibleState) then) =
      _$BibleStateCopyWithImpl<$Res, BibleState>;
  @useResult
  $Res call({String name, List<BookState> books});
}

/// @nodoc
class _$BibleStateCopyWithImpl<$Res, $Val extends BibleState>
    implements $BibleStateCopyWith<$Res> {
  _$BibleStateCopyWithImpl(this._value, this._then);

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
              as List<BookState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BibleStateImplCopyWith<$Res>
    implements $BibleStateCopyWith<$Res> {
  factory _$$BibleStateImplCopyWith(
          _$BibleStateImpl value, $Res Function(_$BibleStateImpl) then) =
      __$$BibleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<BookState> books});
}

/// @nodoc
class __$$BibleStateImplCopyWithImpl<$Res>
    extends _$BibleStateCopyWithImpl<$Res, _$BibleStateImpl>
    implements _$$BibleStateImplCopyWith<$Res> {
  __$$BibleStateImplCopyWithImpl(
      _$BibleStateImpl _value, $Res Function(_$BibleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? books = null,
  }) {
    return _then(_$BibleStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookState>,
    ));
  }
}

/// @nodoc

class _$BibleStateImpl extends _BibleState with DiagnosticableTreeMixin {
  const _$BibleStateImpl(
      {required this.name, required final List<BookState> books})
      : _books = books,
        super._();

  @override
  final String name;
  final List<BookState> _books;
  @override
  List<BookState> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BibleState(name: $name, books: $books)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BibleState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('books', books));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BibleStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BibleStateImplCopyWith<_$BibleStateImpl> get copyWith =>
      __$$BibleStateImplCopyWithImpl<_$BibleStateImpl>(this, _$identity);
}

abstract class _BibleState extends BibleState {
  const factory _BibleState(
      {required final String name,
      required final List<BookState> books}) = _$BibleStateImpl;
  const _BibleState._() : super._();

  @override
  String get name;
  @override
  List<BookState> get books;
  @override
  @JsonKey(ignore: true)
  _$$BibleStateImplCopyWith<_$BibleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
