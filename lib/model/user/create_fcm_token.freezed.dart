// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_fcm_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateFcmToken _$CreateFcmTokenFromJson(Map<String, dynamic> json) {
  return _CreateFcmToken.fromJson(json);
}

/// @nodoc
mixin _$CreateFcmToken {
  String get deviceType => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this CreateFcmToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFcmToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFcmTokenCopyWith<CreateFcmToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFcmTokenCopyWith<$Res> {
  factory $CreateFcmTokenCopyWith(
          CreateFcmToken value, $Res Function(CreateFcmToken) then) =
      _$CreateFcmTokenCopyWithImpl<$Res, CreateFcmToken>;
  @useResult
  $Res call({String deviceType, String fcmToken});
}

/// @nodoc
class _$CreateFcmTokenCopyWithImpl<$Res, $Val extends CreateFcmToken>
    implements $CreateFcmTokenCopyWith<$Res> {
  _$CreateFcmTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFcmToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceType = null,
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateFcmTokenImplCopyWith<$Res>
    implements $CreateFcmTokenCopyWith<$Res> {
  factory _$$CreateFcmTokenImplCopyWith(_$CreateFcmTokenImpl value,
          $Res Function(_$CreateFcmTokenImpl) then) =
      __$$CreateFcmTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceType, String fcmToken});
}

/// @nodoc
class __$$CreateFcmTokenImplCopyWithImpl<$Res>
    extends _$CreateFcmTokenCopyWithImpl<$Res, _$CreateFcmTokenImpl>
    implements _$$CreateFcmTokenImplCopyWith<$Res> {
  __$$CreateFcmTokenImplCopyWithImpl(
      _$CreateFcmTokenImpl _value, $Res Function(_$CreateFcmTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateFcmToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceType = null,
    Object? fcmToken = null,
  }) {
    return _then(_$CreateFcmTokenImpl(
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateFcmTokenImpl implements _CreateFcmToken {
  _$CreateFcmTokenImpl({required this.deviceType, required this.fcmToken});

  factory _$CreateFcmTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFcmTokenImplFromJson(json);

  @override
  final String deviceType;
  @override
  final String fcmToken;

  @override
  String toString() {
    return 'CreateFcmToken(deviceType: $deviceType, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFcmTokenImpl &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceType, fcmToken);

  /// Create a copy of CreateFcmToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFcmTokenImplCopyWith<_$CreateFcmTokenImpl> get copyWith =>
      __$$CreateFcmTokenImplCopyWithImpl<_$CreateFcmTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFcmTokenImplToJson(
      this,
    );
  }
}

abstract class _CreateFcmToken implements CreateFcmToken {
  factory _CreateFcmToken(
      {required final String deviceType,
      required final String fcmToken}) = _$CreateFcmTokenImpl;

  factory _CreateFcmToken.fromJson(Map<String, dynamic> json) =
      _$CreateFcmTokenImpl.fromJson;

  @override
  String get deviceType;
  @override
  String get fcmToken;

  /// Create a copy of CreateFcmToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFcmTokenImplCopyWith<_$CreateFcmTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
