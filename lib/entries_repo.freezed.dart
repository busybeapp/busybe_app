// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entries_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Entry {
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of Entry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntryCopyWith<Entry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res, Entry>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$EntryCopyWithImpl<$Res, $Val extends Entry>
    implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Entry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntryImplCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$$EntryImplCopyWith(
          _$EntryImpl value, $Res Function(_$EntryImpl) then) =
      __$$EntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$EntryImplCopyWithImpl<$Res>
    extends _$EntryCopyWithImpl<$Res, _$EntryImpl>
    implements _$$EntryImplCopyWith<$Res> {
  __$$EntryImplCopyWithImpl(
      _$EntryImpl _value, $Res Function(_$EntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Entry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$EntryImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EntryImpl implements _Entry {
  const _$EntryImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'Entry(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of Entry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryImplCopyWith<_$EntryImpl> get copyWith =>
      __$$EntryImplCopyWithImpl<_$EntryImpl>(this, _$identity);
}

abstract class _Entry implements Entry {
  const factory _Entry({required final String title}) = _$EntryImpl;

  @override
  String get title;

  /// Create a copy of Entry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryImplCopyWith<_$EntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Eli {
  String get hello => throw _privateConstructorUsedError;

  /// Create a copy of Eli
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EliCopyWith<Eli> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EliCopyWith<$Res> {
  factory $EliCopyWith(Eli value, $Res Function(Eli) then) =
      _$EliCopyWithImpl<$Res, Eli>;
  @useResult
  $Res call({String hello});
}

/// @nodoc
class _$EliCopyWithImpl<$Res, $Val extends Eli> implements $EliCopyWith<$Res> {
  _$EliCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Eli
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hello = null,
  }) {
    return _then(_value.copyWith(
      hello: null == hello
          ? _value.hello
          : hello // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EliImplCopyWith<$Res> implements $EliCopyWith<$Res> {
  factory _$$EliImplCopyWith(_$EliImpl value, $Res Function(_$EliImpl) then) =
      __$$EliImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hello});
}

/// @nodoc
class __$$EliImplCopyWithImpl<$Res> extends _$EliCopyWithImpl<$Res, _$EliImpl>
    implements _$$EliImplCopyWith<$Res> {
  __$$EliImplCopyWithImpl(_$EliImpl _value, $Res Function(_$EliImpl) _then)
      : super(_value, _then);

  /// Create a copy of Eli
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hello = null,
  }) {
    return _then(_$EliImpl(
      hello: null == hello
          ? _value.hello
          : hello // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EliImpl implements _Eli {
  const _$EliImpl({required this.hello});

  @override
  final String hello;

  @override
  String toString() {
    return 'Eli(hello: $hello)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EliImpl &&
            (identical(other.hello, hello) || other.hello == hello));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hello);

  /// Create a copy of Eli
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EliImplCopyWith<_$EliImpl> get copyWith =>
      __$$EliImplCopyWithImpl<_$EliImpl>(this, _$identity);
}

abstract class _Eli implements Eli {
  const factory _Eli({required final String hello}) = _$EliImpl;

  @override
  String get hello;

  /// Create a copy of Eli
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EliImplCopyWith<_$EliImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
