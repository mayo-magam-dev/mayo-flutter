// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadUser _$ReadUserFromJson(Map<String, dynamic> json) {
  return _ReadUser.fromJson(json);
}

/// @nodoc
mixin _$ReadUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  bool? get agreeMarketing => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ReadUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadUserCopyWith<ReadUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadUserCopyWith<$Res> {
  factory $ReadUserCopyWith(ReadUser value, $Res Function(ReadUser) then) =
      _$ReadUserCopyWithImpl<$Res, ReadUser>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? photoUrl,
      String? phoneNumber,
      bool? agreeMarketing,
      String? gender,
      String? name});
}

/// @nodoc
class _$ReadUserCopyWithImpl<$Res, $Val extends ReadUser>
    implements $ReadUserCopyWith<$Res> {
  _$ReadUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoUrl = freezed,
    Object? phoneNumber = freezed,
    Object? agreeMarketing = freezed,
    Object? gender = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      agreeMarketing: freezed == agreeMarketing
          ? _value.agreeMarketing
          : agreeMarketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadUserImplCopyWith<$Res>
    implements $ReadUserCopyWith<$Res> {
  factory _$$ReadUserImplCopyWith(
          _$ReadUserImpl value, $Res Function(_$ReadUserImpl) then) =
      __$$ReadUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String displayName,
      String? photoUrl,
      String? phoneNumber,
      bool? agreeMarketing,
      String? gender,
      String? name});
}

/// @nodoc
class __$$ReadUserImplCopyWithImpl<$Res>
    extends _$ReadUserCopyWithImpl<$Res, _$ReadUserImpl>
    implements _$$ReadUserImplCopyWith<$Res> {
  __$$ReadUserImplCopyWithImpl(
      _$ReadUserImpl _value, $Res Function(_$ReadUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoUrl = freezed,
    Object? phoneNumber = freezed,
    Object? agreeMarketing = freezed,
    Object? gender = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ReadUserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      agreeMarketing: freezed == agreeMarketing
          ? _value.agreeMarketing
          : agreeMarketing // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadUserImpl implements _ReadUser {
  _$ReadUserImpl(
      {required this.uid,
      required this.email,
      required this.displayName,
      this.photoUrl,
      this.phoneNumber,
      this.agreeMarketing,
      this.gender,
      this.name});

  factory _$ReadUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadUserImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? photoUrl;
  @override
  final String? phoneNumber;
  @override
  final bool? agreeMarketing;
  @override
  final String? gender;
  @override
  final String? name;

  @override
  String toString() {
    return 'ReadUser(uid: $uid, email: $email, displayName: $displayName, photoUrl: $photoUrl, phoneNumber: $phoneNumber, agreeMarketing: $agreeMarketing, gender: $gender, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.agreeMarketing, agreeMarketing) ||
                other.agreeMarketing == agreeMarketing) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, displayName,
      photoUrl, phoneNumber, agreeMarketing, gender, name);

  /// Create a copy of ReadUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadUserImplCopyWith<_$ReadUserImpl> get copyWith =>
      __$$ReadUserImplCopyWithImpl<_$ReadUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadUserImplToJson(
      this,
    );
  }
}

abstract class _ReadUser implements ReadUser {
  factory _ReadUser(
      {required final String uid,
      required final String email,
      required final String displayName,
      final String? photoUrl,
      final String? phoneNumber,
      final bool? agreeMarketing,
      final String? gender,
      final String? name}) = _$ReadUserImpl;

  factory _ReadUser.fromJson(Map<String, dynamic> json) =
      _$ReadUserImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get photoUrl;
  @override
  String? get phoneNumber;
  @override
  bool? get agreeMarketing;
  @override
  String? get gender;
  @override
  String? get name;

  /// Create a copy of ReadUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadUserImplCopyWith<_$ReadUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
