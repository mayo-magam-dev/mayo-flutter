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
  String get userid => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdTime => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isManager => throw _privateConstructorUsedError;
  bool get agreeTerms1 => throw _privateConstructorUsedError;
  bool get agreeTerms2 => throw _privateConstructorUsedError;
  bool get agreeMarketing => throw _privateConstructorUsedError;
  String get currentLocation => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get birthday => throw _privateConstructorUsedError;

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
      {String userid,
      String uid,
      String email,
      String displayName,
      String photoUrl,
      @TimestampConverter() DateTime createdTime,
      String phoneNumber,
      bool isManager,
      bool agreeTerms1,
      bool agreeTerms2,
      bool agreeMarketing,
      String currentLocation,
      String gender,
      String name,
      @TimestampConverter() DateTime birthday});
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
    Object? userid = null,
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoUrl = null,
    Object? createdTime = null,
    Object? phoneNumber = null,
    Object? isManager = null,
    Object? agreeTerms1 = null,
    Object? agreeTerms2 = null,
    Object? agreeMarketing = null,
    Object? currentLocation = null,
    Object? gender = null,
    Object? name = null,
    Object? birthday = null,
  }) {
    return _then(_value.copyWith(
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isManager: null == isManager
          ? _value.isManager
          : isManager // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms1: null == agreeTerms1
          ? _value.agreeTerms1
          : agreeTerms1 // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms2: null == agreeTerms2
          ? _value.agreeTerms2
          : agreeTerms2 // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeMarketing: null == agreeMarketing
          ? _value.agreeMarketing
          : agreeMarketing // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {String userid,
      String uid,
      String email,
      String displayName,
      String photoUrl,
      @TimestampConverter() DateTime createdTime,
      String phoneNumber,
      bool isManager,
      bool agreeTerms1,
      bool agreeTerms2,
      bool agreeMarketing,
      String currentLocation,
      String gender,
      String name,
      @TimestampConverter() DateTime birthday});
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
    Object? userid = null,
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? photoUrl = null,
    Object? createdTime = null,
    Object? phoneNumber = null,
    Object? isManager = null,
    Object? agreeTerms1 = null,
    Object? agreeTerms2 = null,
    Object? agreeMarketing = null,
    Object? currentLocation = null,
    Object? gender = null,
    Object? name = null,
    Object? birthday = null,
  }) {
    return _then(_$ReadUserImpl(
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isManager: null == isManager
          ? _value.isManager
          : isManager // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms1: null == agreeTerms1
          ? _value.agreeTerms1
          : agreeTerms1 // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeTerms2: null == agreeTerms2
          ? _value.agreeTerms2
          : agreeTerms2 // ignore: cast_nullable_to_non_nullable
              as bool,
      agreeMarketing: null == agreeMarketing
          ? _value.agreeMarketing
          : agreeMarketing // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadUserImpl implements _ReadUser {
  _$ReadUserImpl(
      {required this.userid,
      required this.uid,
      required this.email,
      required this.displayName,
      required this.photoUrl,
      @TimestampConverter() required this.createdTime,
      required this.phoneNumber,
      required this.isManager,
      required this.agreeTerms1,
      required this.agreeTerms2,
      required this.agreeMarketing,
      required this.currentLocation,
      required this.gender,
      required this.name,
      @TimestampConverter() required this.birthday});

  factory _$ReadUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadUserImplFromJson(json);

  @override
  final String userid;
  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  @TimestampConverter()
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final bool isManager;
  @override
  final bool agreeTerms1;
  @override
  final bool agreeTerms2;
  @override
  final bool agreeMarketing;
  @override
  final String currentLocation;
  @override
  final String gender;
  @override
  final String name;
  @override
  @TimestampConverter()
  final DateTime birthday;

  @override
  String toString() {
    return 'ReadUser(userid: $userid, uid: $uid, email: $email, displayName: $displayName, photoUrl: $photoUrl, createdTime: $createdTime, phoneNumber: $phoneNumber, isManager: $isManager, agreeTerms1: $agreeTerms1, agreeTerms2: $agreeTerms2, agreeMarketing: $agreeMarketing, currentLocation: $currentLocation, gender: $gender, name: $name, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadUserImpl &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isManager, isManager) ||
                other.isManager == isManager) &&
            (identical(other.agreeTerms1, agreeTerms1) ||
                other.agreeTerms1 == agreeTerms1) &&
            (identical(other.agreeTerms2, agreeTerms2) ||
                other.agreeTerms2 == agreeTerms2) &&
            (identical(other.agreeMarketing, agreeMarketing) ||
                other.agreeMarketing == agreeMarketing) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userid,
      uid,
      email,
      displayName,
      photoUrl,
      createdTime,
      phoneNumber,
      isManager,
      agreeTerms1,
      agreeTerms2,
      agreeMarketing,
      currentLocation,
      gender,
      name,
      birthday);

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
      {required final String userid,
      required final String uid,
      required final String email,
      required final String displayName,
      required final String photoUrl,
      @TimestampConverter() required final DateTime createdTime,
      required final String phoneNumber,
      required final bool isManager,
      required final bool agreeTerms1,
      required final bool agreeTerms2,
      required final bool agreeMarketing,
      required final String currentLocation,
      required final String gender,
      required final String name,
      @TimestampConverter() required final DateTime birthday}) = _$ReadUserImpl;

  factory _ReadUser.fromJson(Map<String, dynamic> json) =
      _$ReadUserImpl.fromJson;

  @override
  String get userid;
  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String get photoUrl;
  @override
  @TimestampConverter()
  DateTime get createdTime;
  @override
  String get phoneNumber;
  @override
  bool get isManager;
  @override
  bool get agreeTerms1;
  @override
  bool get agreeTerms2;
  @override
  bool get agreeMarketing;
  @override
  String get currentLocation;
  @override
  String get gender;
  @override
  String get name;
  @override
  @TimestampConverter()
  DateTime get birthday;

  /// Create a copy of ReadUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadUserImplCopyWith<_$ReadUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
