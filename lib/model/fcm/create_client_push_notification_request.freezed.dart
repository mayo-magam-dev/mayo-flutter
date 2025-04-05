// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_client_push_notification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateClientPushNotificationRequest
    _$CreateClientPushNotificationRequestFromJson(Map<String, dynamic> json) {
  return _CreateClientPushNotificationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateClientPushNotificationRequest {
  String get notificationImageUrl => throw _privateConstructorUsedError;
  String get notificationText => throw _privateConstructorUsedError;
  String get notificationTitle => throw _privateConstructorUsedError;
  int get numSent => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this CreateClientPushNotificationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateClientPushNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateClientPushNotificationRequestCopyWith<
          CreateClientPushNotificationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClientPushNotificationRequestCopyWith<$Res> {
  factory $CreateClientPushNotificationRequestCopyWith(
          CreateClientPushNotificationRequest value,
          $Res Function(CreateClientPushNotificationRequest) then) =
      _$CreateClientPushNotificationRequestCopyWithImpl<$Res,
          CreateClientPushNotificationRequest>;
  @useResult
  $Res call(
      {String notificationImageUrl,
      String notificationText,
      String notificationTitle,
      int numSent,
      String sender,
      bool status,
      @TimestampConverter() DateTime timestamp});
}

/// @nodoc
class _$CreateClientPushNotificationRequestCopyWithImpl<$Res,
        $Val extends CreateClientPushNotificationRequest>
    implements $CreateClientPushNotificationRequestCopyWith<$Res> {
  _$CreateClientPushNotificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateClientPushNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationImageUrl = null,
    Object? notificationText = null,
    Object? notificationTitle = null,
    Object? numSent = null,
    Object? sender = null,
    Object? status = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      notificationImageUrl: null == notificationImageUrl
          ? _value.notificationImageUrl
          : notificationImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationText: null == notificationText
          ? _value.notificationText
          : notificationText // ignore: cast_nullable_to_non_nullable
              as String,
      notificationTitle: null == notificationTitle
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      numSent: null == numSent
          ? _value.numSent
          : numSent // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateClientPushNotificationRequestImplCopyWith<$Res>
    implements $CreateClientPushNotificationRequestCopyWith<$Res> {
  factory _$$CreateClientPushNotificationRequestImplCopyWith(
          _$CreateClientPushNotificationRequestImpl value,
          $Res Function(_$CreateClientPushNotificationRequestImpl) then) =
      __$$CreateClientPushNotificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String notificationImageUrl,
      String notificationText,
      String notificationTitle,
      int numSent,
      String sender,
      bool status,
      @TimestampConverter() DateTime timestamp});
}

/// @nodoc
class __$$CreateClientPushNotificationRequestImplCopyWithImpl<$Res>
    extends _$CreateClientPushNotificationRequestCopyWithImpl<$Res,
        _$CreateClientPushNotificationRequestImpl>
    implements _$$CreateClientPushNotificationRequestImplCopyWith<$Res> {
  __$$CreateClientPushNotificationRequestImplCopyWithImpl(
      _$CreateClientPushNotificationRequestImpl _value,
      $Res Function(_$CreateClientPushNotificationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateClientPushNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationImageUrl = null,
    Object? notificationText = null,
    Object? notificationTitle = null,
    Object? numSent = null,
    Object? sender = null,
    Object? status = null,
    Object? timestamp = null,
  }) {
    return _then(_$CreateClientPushNotificationRequestImpl(
      notificationImageUrl: null == notificationImageUrl
          ? _value.notificationImageUrl
          : notificationImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationText: null == notificationText
          ? _value.notificationText
          : notificationText // ignore: cast_nullable_to_non_nullable
              as String,
      notificationTitle: null == notificationTitle
          ? _value.notificationTitle
          : notificationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      numSent: null == numSent
          ? _value.numSent
          : numSent // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateClientPushNotificationRequestImpl
    implements _CreateClientPushNotificationRequest {
  _$CreateClientPushNotificationRequestImpl(
      {required this.notificationImageUrl,
      required this.notificationText,
      required this.notificationTitle,
      required this.numSent,
      required this.sender,
      required this.status,
      @TimestampConverter() required this.timestamp});

  factory _$CreateClientPushNotificationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateClientPushNotificationRequestImplFromJson(json);

  @override
  final String notificationImageUrl;
  @override
  final String notificationText;
  @override
  final String notificationTitle;
  @override
  final int numSent;
  @override
  final String sender;
  @override
  final bool status;
  @override
  @TimestampConverter()
  final DateTime timestamp;

  @override
  String toString() {
    return 'CreateClientPushNotificationRequest(notificationImageUrl: $notificationImageUrl, notificationText: $notificationText, notificationTitle: $notificationTitle, numSent: $numSent, sender: $sender, status: $status, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClientPushNotificationRequestImpl &&
            (identical(other.notificationImageUrl, notificationImageUrl) ||
                other.notificationImageUrl == notificationImageUrl) &&
            (identical(other.notificationText, notificationText) ||
                other.notificationText == notificationText) &&
            (identical(other.notificationTitle, notificationTitle) ||
                other.notificationTitle == notificationTitle) &&
            (identical(other.numSent, numSent) || other.numSent == numSent) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notificationImageUrl,
      notificationText, notificationTitle, numSent, sender, status, timestamp);

  /// Create a copy of CreateClientPushNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClientPushNotificationRequestImplCopyWith<
          _$CreateClientPushNotificationRequestImpl>
      get copyWith => __$$CreateClientPushNotificationRequestImplCopyWithImpl<
          _$CreateClientPushNotificationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateClientPushNotificationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateClientPushNotificationRequest
    implements CreateClientPushNotificationRequest {
  factory _CreateClientPushNotificationRequest(
          {required final String notificationImageUrl,
          required final String notificationText,
          required final String notificationTitle,
          required final int numSent,
          required final String sender,
          required final bool status,
          @TimestampConverter() required final DateTime timestamp}) =
      _$CreateClientPushNotificationRequestImpl;

  factory _CreateClientPushNotificationRequest.fromJson(
          Map<String, dynamic> json) =
      _$CreateClientPushNotificationRequestImpl.fromJson;

  @override
  String get notificationImageUrl;
  @override
  String get notificationText;
  @override
  String get notificationTitle;
  @override
  int get numSent;
  @override
  String get sender;
  @override
  bool get status;
  @override
  @TimestampConverter()
  DateTime get timestamp;

  /// Create a copy of CreateClientPushNotificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateClientPushNotificationRequestImplCopyWith<
          _$CreateClientPushNotificationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
