// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FCMMessageRequest _$FCMMessageRequestFromJson(Map<String, dynamic> json) {
  return _FCMMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$FCMMessageRequest {
  bool get validateOnly => throw _privateConstructorUsedError;
  FCMMessage get message => throw _privateConstructorUsedError;

  /// Serializes this FCMMessageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FCMMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FCMMessageRequestCopyWith<FCMMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMMessageRequestCopyWith<$Res> {
  factory $FCMMessageRequestCopyWith(
          FCMMessageRequest value, $Res Function(FCMMessageRequest) then) =
      _$FCMMessageRequestCopyWithImpl<$Res, FCMMessageRequest>;
  @useResult
  $Res call({bool validateOnly, FCMMessage message});

  $FCMMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$FCMMessageRequestCopyWithImpl<$Res, $Val extends FCMMessageRequest>
    implements $FCMMessageRequestCopyWith<$Res> {
  _$FCMMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FCMMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validateOnly = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      validateOnly: null == validateOnly
          ? _value.validateOnly
          : validateOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FCMMessage,
    ) as $Val);
  }

  /// Create a copy of FCMMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FCMMessageCopyWith<$Res> get message {
    return $FCMMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FCMMessageRequestImplCopyWith<$Res>
    implements $FCMMessageRequestCopyWith<$Res> {
  factory _$$FCMMessageRequestImplCopyWith(_$FCMMessageRequestImpl value,
          $Res Function(_$FCMMessageRequestImpl) then) =
      __$$FCMMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool validateOnly, FCMMessage message});

  @override
  $FCMMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$FCMMessageRequestImplCopyWithImpl<$Res>
    extends _$FCMMessageRequestCopyWithImpl<$Res, _$FCMMessageRequestImpl>
    implements _$$FCMMessageRequestImplCopyWith<$Res> {
  __$$FCMMessageRequestImplCopyWithImpl(_$FCMMessageRequestImpl _value,
      $Res Function(_$FCMMessageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FCMMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validateOnly = null,
    Object? message = null,
  }) {
    return _then(_$FCMMessageRequestImpl(
      validateOnly: null == validateOnly
          ? _value.validateOnly
          : validateOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as FCMMessage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMMessageRequestImpl implements _FCMMessageRequest {
  _$FCMMessageRequestImpl({required this.validateOnly, required this.message});

  factory _$FCMMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMMessageRequestImplFromJson(json);

  @override
  final bool validateOnly;
  @override
  final FCMMessage message;

  @override
  String toString() {
    return 'FCMMessageRequest(validateOnly: $validateOnly, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMMessageRequestImpl &&
            (identical(other.validateOnly, validateOnly) ||
                other.validateOnly == validateOnly) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, validateOnly, message);

  /// Create a copy of FCMMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMMessageRequestImplCopyWith<_$FCMMessageRequestImpl> get copyWith =>
      __$$FCMMessageRequestImplCopyWithImpl<_$FCMMessageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _FCMMessageRequest implements FCMMessageRequest {
  factory _FCMMessageRequest(
      {required final bool validateOnly,
      required final FCMMessage message}) = _$FCMMessageRequestImpl;

  factory _FCMMessageRequest.fromJson(Map<String, dynamic> json) =
      _$FCMMessageRequestImpl.fromJson;

  @override
  bool get validateOnly;
  @override
  FCMMessage get message;

  /// Create a copy of FCMMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FCMMessageRequestImplCopyWith<_$FCMMessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FCMMessage _$FCMMessageFromJson(Map<String, dynamic> json) {
  return _FCMMessage.fromJson(json);
}

/// @nodoc
mixin _$FCMMessage {
  FCMNotification get notification => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  FCMData get data => throw _privateConstructorUsedError;

  /// Serializes this FCMMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FCMMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FCMMessageCopyWith<FCMMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMMessageCopyWith<$Res> {
  factory $FCMMessageCopyWith(
          FCMMessage value, $Res Function(FCMMessage) then) =
      _$FCMMessageCopyWithImpl<$Res, FCMMessage>;
  @useResult
  $Res call({FCMNotification notification, String token, FCMData data});

  $FCMNotificationCopyWith<$Res> get notification;
  $FCMDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FCMMessageCopyWithImpl<$Res, $Val extends FCMMessage>
    implements $FCMMessageCopyWith<$Res> {
  _$FCMMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FCMMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? token = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as FCMNotification,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FCMData,
    ) as $Val);
  }

  /// Create a copy of FCMMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FCMNotificationCopyWith<$Res> get notification {
    return $FCMNotificationCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }

  /// Create a copy of FCMMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FCMDataCopyWith<$Res> get data {
    return $FCMDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FCMMessageImplCopyWith<$Res>
    implements $FCMMessageCopyWith<$Res> {
  factory _$$FCMMessageImplCopyWith(
          _$FCMMessageImpl value, $Res Function(_$FCMMessageImpl) then) =
      __$$FCMMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FCMNotification notification, String token, FCMData data});

  @override
  $FCMNotificationCopyWith<$Res> get notification;
  @override
  $FCMDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$FCMMessageImplCopyWithImpl<$Res>
    extends _$FCMMessageCopyWithImpl<$Res, _$FCMMessageImpl>
    implements _$$FCMMessageImplCopyWith<$Res> {
  __$$FCMMessageImplCopyWithImpl(
      _$FCMMessageImpl _value, $Res Function(_$FCMMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of FCMMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? token = null,
    Object? data = null,
  }) {
    return _then(_$FCMMessageImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as FCMNotification,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FCMData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMMessageImpl implements _FCMMessage {
  _$FCMMessageImpl(
      {required this.notification, required this.token, required this.data});

  factory _$FCMMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMMessageImplFromJson(json);

  @override
  final FCMNotification notification;
  @override
  final String token;
  @override
  final FCMData data;

  @override
  String toString() {
    return 'FCMMessage(notification: $notification, token: $token, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMMessageImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notification, token, data);

  /// Create a copy of FCMMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMMessageImplCopyWith<_$FCMMessageImpl> get copyWith =>
      __$$FCMMessageImplCopyWithImpl<_$FCMMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMMessageImplToJson(
      this,
    );
  }
}

abstract class _FCMMessage implements FCMMessage {
  factory _FCMMessage(
      {required final FCMNotification notification,
      required final String token,
      required final FCMData data}) = _$FCMMessageImpl;

  factory _FCMMessage.fromJson(Map<String, dynamic> json) =
      _$FCMMessageImpl.fromJson;

  @override
  FCMNotification get notification;
  @override
  String get token;
  @override
  FCMData get data;

  /// Create a copy of FCMMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FCMMessageImplCopyWith<_$FCMMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FCMNotification _$FCMNotificationFromJson(Map<String, dynamic> json) {
  return _FCMNotification.fromJson(json);
}

/// @nodoc
mixin _$FCMNotification {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this FCMNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FCMNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FCMNotificationCopyWith<FCMNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMNotificationCopyWith<$Res> {
  factory $FCMNotificationCopyWith(
          FCMNotification value, $Res Function(FCMNotification) then) =
      _$FCMNotificationCopyWithImpl<$Res, FCMNotification>;
  @useResult
  $Res call({String title, String body, String image});
}

/// @nodoc
class _$FCMNotificationCopyWithImpl<$Res, $Val extends FCMNotification>
    implements $FCMNotificationCopyWith<$Res> {
  _$FCMNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FCMNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FCMNotificationImplCopyWith<$Res>
    implements $FCMNotificationCopyWith<$Res> {
  factory _$$FCMNotificationImplCopyWith(_$FCMNotificationImpl value,
          $Res Function(_$FCMNotificationImpl) then) =
      __$$FCMNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body, String image});
}

/// @nodoc
class __$$FCMNotificationImplCopyWithImpl<$Res>
    extends _$FCMNotificationCopyWithImpl<$Res, _$FCMNotificationImpl>
    implements _$$FCMNotificationImplCopyWith<$Res> {
  __$$FCMNotificationImplCopyWithImpl(
      _$FCMNotificationImpl _value, $Res Function(_$FCMNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of FCMNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? image = null,
  }) {
    return _then(_$FCMNotificationImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMNotificationImpl implements _FCMNotification {
  _$FCMNotificationImpl(
      {required this.title, required this.body, required this.image});

  factory _$FCMNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMNotificationImplFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  final String image;

  @override
  String toString() {
    return 'FCMNotification(title: $title, body: $body, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMNotificationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, body, image);

  /// Create a copy of FCMNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMNotificationImplCopyWith<_$FCMNotificationImpl> get copyWith =>
      __$$FCMNotificationImplCopyWithImpl<_$FCMNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMNotificationImplToJson(
      this,
    );
  }
}

abstract class _FCMNotification implements FCMNotification {
  factory _FCMNotification(
      {required final String title,
      required final String body,
      required final String image}) = _$FCMNotificationImpl;

  factory _FCMNotification.fromJson(Map<String, dynamic> json) =
      _$FCMNotificationImpl.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  String get image;

  /// Create a copy of FCMNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FCMNotificationImplCopyWith<_$FCMNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FCMData _$FCMDataFromJson(Map<String, dynamic> json) {
  return _FCMData.fromJson(json);
}

/// @nodoc
mixin _$FCMData {
  String get initialPageName => throw _privateConstructorUsedError;

  /// Serializes this FCMData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FCMDataCopyWith<FCMData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMDataCopyWith<$Res> {
  factory $FCMDataCopyWith(FCMData value, $Res Function(FCMData) then) =
      _$FCMDataCopyWithImpl<$Res, FCMData>;
  @useResult
  $Res call({String initialPageName});
}

/// @nodoc
class _$FCMDataCopyWithImpl<$Res, $Val extends FCMData>
    implements $FCMDataCopyWith<$Res> {
  _$FCMDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPageName = null,
  }) {
    return _then(_value.copyWith(
      initialPageName: null == initialPageName
          ? _value.initialPageName
          : initialPageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FCMDataImplCopyWith<$Res> implements $FCMDataCopyWith<$Res> {
  factory _$$FCMDataImplCopyWith(
          _$FCMDataImpl value, $Res Function(_$FCMDataImpl) then) =
      __$$FCMDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String initialPageName});
}

/// @nodoc
class __$$FCMDataImplCopyWithImpl<$Res>
    extends _$FCMDataCopyWithImpl<$Res, _$FCMDataImpl>
    implements _$$FCMDataImplCopyWith<$Res> {
  __$$FCMDataImplCopyWithImpl(
      _$FCMDataImpl _value, $Res Function(_$FCMDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialPageName = null,
  }) {
    return _then(_$FCMDataImpl(
      initialPageName: null == initialPageName
          ? _value.initialPageName
          : initialPageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMDataImpl implements _FCMData {
  _$FCMDataImpl({required this.initialPageName});

  factory _$FCMDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMDataImplFromJson(json);

  @override
  final String initialPageName;

  @override
  String toString() {
    return 'FCMData(initialPageName: $initialPageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMDataImpl &&
            (identical(other.initialPageName, initialPageName) ||
                other.initialPageName == initialPageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, initialPageName);

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMDataImplCopyWith<_$FCMDataImpl> get copyWith =>
      __$$FCMDataImplCopyWithImpl<_$FCMDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMDataImplToJson(
      this,
    );
  }
}

abstract class _FCMData implements FCMData {
  factory _FCMData({required final String initialPageName}) = _$FCMDataImpl;

  factory _FCMData.fromJson(Map<String, dynamic> json) = _$FCMDataImpl.fromJson;

  @override
  String get initialPageName;

  /// Create a copy of FCMData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FCMDataImplCopyWith<_$FCMDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
