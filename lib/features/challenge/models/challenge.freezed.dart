// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return _Challenge.fromJson(json);
}

/// @nodoc
mixin _$Challenge {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get startDt => throw _privateConstructorUsedError; // 시작 날짜
  DateTime? get endDt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeCopyWith<Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeCopyWith<$Res> {
  factory $ChallengeCopyWith(Challenge value, $Res Function(Challenge) then) =
      _$ChallengeCopyWithImpl<$Res, Challenge>;
  @useResult
  $Res call({String id, String name, DateTime? startDt, DateTime? endDt});
}

/// @nodoc
class _$ChallengeCopyWithImpl<$Res, $Val extends Challenge>
    implements $ChallengeCopyWith<$Res> {
  _$ChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDt: freezed == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDt: freezed == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeImplCopyWith<$Res>
    implements $ChallengeCopyWith<$Res> {
  factory _$$ChallengeImplCopyWith(
          _$ChallengeImpl value, $Res Function(_$ChallengeImpl) then) =
      __$$ChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, DateTime? startDt, DateTime? endDt});
}

/// @nodoc
class __$$ChallengeImplCopyWithImpl<$Res>
    extends _$ChallengeCopyWithImpl<$Res, _$ChallengeImpl>
    implements _$$ChallengeImplCopyWith<$Res> {
  __$$ChallengeImplCopyWithImpl(
      _$ChallengeImpl _value, $Res Function(_$ChallengeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
  }) {
    return _then(_$ChallengeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDt: freezed == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDt: freezed == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeImpl implements _Challenge {
  const _$ChallengeImpl(
      {required this.id,
      required this.name,
      required this.startDt,
      required this.endDt});

  factory _$ChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime? startDt;
// 시작 날짜
  @override
  final DateTime? endDt;

  @override
  String toString() {
    return 'Challenge(id: $id, name: $name, startDt: $startDt, endDt: $endDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDt, startDt) || other.startDt == startDt) &&
            (identical(other.endDt, endDt) || other.endDt == endDt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, startDt, endDt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      __$$ChallengeImplCopyWithImpl<_$ChallengeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeImplToJson(
      this,
    );
  }
}

abstract class _Challenge implements Challenge {
  const factory _Challenge(
      {required final String id,
      required final String name,
      required final DateTime? startDt,
      required final DateTime? endDt}) = _$ChallengeImpl;

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$ChallengeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime? get startDt;
  @override // 시작 날짜
  DateTime? get endDt;
  @override
  @JsonKey(ignore: true)
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DbChallenge _$DbChallengeFromJson(Map<String, dynamic> json) {
  return _DbChallenge.fromJson(json);
}

/// @nodoc
mixin _$DbChallenge {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get startDt => throw _privateConstructorUsedError; // 시작 날짜
  String? get endDt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DbChallengeCopyWith<DbChallenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbChallengeCopyWith<$Res> {
  factory $DbChallengeCopyWith(
          DbChallenge value, $Res Function(DbChallenge) then) =
      _$DbChallengeCopyWithImpl<$Res, DbChallenge>;
  @useResult
  $Res call({String id, String name, String? startDt, String? endDt});
}

/// @nodoc
class _$DbChallengeCopyWithImpl<$Res, $Val extends DbChallenge>
    implements $DbChallengeCopyWith<$Res> {
  _$DbChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDt: freezed == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as String?,
      endDt: freezed == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DbChallengeImplCopyWith<$Res>
    implements $DbChallengeCopyWith<$Res> {
  factory _$$DbChallengeImplCopyWith(
          _$DbChallengeImpl value, $Res Function(_$DbChallengeImpl) then) =
      __$$DbChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? startDt, String? endDt});
}

/// @nodoc
class __$$DbChallengeImplCopyWithImpl<$Res>
    extends _$DbChallengeCopyWithImpl<$Res, _$DbChallengeImpl>
    implements _$$DbChallengeImplCopyWith<$Res> {
  __$$DbChallengeImplCopyWithImpl(
      _$DbChallengeImpl _value, $Res Function(_$DbChallengeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
  }) {
    return _then(_$DbChallengeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDt: freezed == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as String?,
      endDt: freezed == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DbChallengeImpl implements _DbChallenge {
  const _$DbChallengeImpl(
      {required this.id,
      required this.name,
      required this.startDt,
      required this.endDt});

  factory _$DbChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DbChallengeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? startDt;
// 시작 날짜
  @override
  final String? endDt;

  @override
  String toString() {
    return 'DbChallenge(id: $id, name: $name, startDt: $startDt, endDt: $endDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DbChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDt, startDt) || other.startDt == startDt) &&
            (identical(other.endDt, endDt) || other.endDt == endDt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, startDt, endDt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DbChallengeImplCopyWith<_$DbChallengeImpl> get copyWith =>
      __$$DbChallengeImplCopyWithImpl<_$DbChallengeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DbChallengeImplToJson(
      this,
    );
  }
}

abstract class _DbChallenge implements DbChallenge {
  const factory _DbChallenge(
      {required final String id,
      required final String name,
      required final String? startDt,
      required final String? endDt}) = _$DbChallengeImpl;

  factory _DbChallenge.fromJson(Map<String, dynamic> json) =
      _$DbChallengeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get startDt;
  @override // 시작 날짜
  String? get endDt;
  @override
  @JsonKey(ignore: true)
  _$$DbChallengeImplCopyWith<_$DbChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
