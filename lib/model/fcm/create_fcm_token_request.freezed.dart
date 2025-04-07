// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_fcm_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateFCMTokenRequest _$CreateFCMTokenRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateFCMTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateFCMTokenRequest {
  String get userId => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this CreateFCMTokenRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateFCMTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFCMTokenRequestCopyWith<CreateFCMTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFCMTokenRequestCopyWith<$Res> {
  factory $CreateFCMTokenRequestCopyWith(CreateFCMTokenRequest value,
          $Res Function(CreateFCMTokenRequest) then) =
      _$CreateFCMTokenRequestCopyWithImpl<$Res, CreateFCMTokenRequest>;
  @useResult
  $Res call({String userId, String fcmToken});
}

/// @nodoc
class _$CreateFCMTokenRequestCopyWithImpl<$Res,
        $Val extends CreateFCMTokenRequest>
    implements $CreateFCMTokenRequestCopyWith<$Res> {
  _$CreateFCMTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFCMTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateFCMTokenRequestImplCopyWith<$Res>
    implements $CreateFCMTokenRequestCopyWith<$Res> {
  factory _$$CreateFCMTokenRequestImplCopyWith(
          _$CreateFCMTokenRequestImpl value,
          $Res Function(_$CreateFCMTokenRequestImpl) then) =
      __$$CreateFCMTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String fcmToken});
}

/// @nodoc
class __$$CreateFCMTokenRequestImplCopyWithImpl<$Res>
    extends _$CreateFCMTokenRequestCopyWithImpl<$Res,
        _$CreateFCMTokenRequestImpl>
    implements _$$CreateFCMTokenRequestImplCopyWith<$Res> {
  __$$CreateFCMTokenRequestImplCopyWithImpl(_$CreateFCMTokenRequestImpl _value,
      $Res Function(_$CreateFCMTokenRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateFCMTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? fcmToken = null,
  }) {
    return _then(_$CreateFCMTokenRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$CreateFCMTokenRequestImpl implements _CreateFCMTokenRequest {
  _$CreateFCMTokenRequestImpl({required this.userId, required this.fcmToken});

  factory _$CreateFCMTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateFCMTokenRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String fcmToken;

  @override
  String toString() {
    return 'CreateFCMTokenRequest(userId: $userId, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFCMTokenRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, fcmToken);

  /// Create a copy of CreateFCMTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFCMTokenRequestImplCopyWith<_$CreateFCMTokenRequestImpl>
      get copyWith => __$$CreateFCMTokenRequestImplCopyWithImpl<
          _$CreateFCMTokenRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateFCMTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateFCMTokenRequest implements CreateFCMTokenRequest {
  factory _CreateFCMTokenRequest(
      {required final String userId,
      required final String fcmToken}) = _$CreateFCMTokenRequestImpl;

  factory _CreateFCMTokenRequest.fromJson(Map<String, dynamic> json) =
      _$CreateFCMTokenRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get fcmToken;

  /// Create a copy of CreateFCMTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFCMTokenRequestImplCopyWith<_$CreateFCMTokenRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
