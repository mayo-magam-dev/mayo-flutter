// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_reservation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadReservationResponse _$ReadReservationResponseFromJson(
    Map<String, dynamic> json) {
  return _ReadReservationResponse.fromJson(json);
}

/// @nodoc
mixin _$ReadReservationResponse {
  String get reservationId => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get pickupTime => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this ReadReservationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadReservationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadReservationResponseCopyWith<ReadReservationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadReservationResponseCopyWith<$Res> {
  factory $ReadReservationResponseCopyWith(ReadReservationResponse value,
          $Res Function(ReadReservationResponse) then) =
      _$ReadReservationResponseCopyWithImpl<$Res, ReadReservationResponse>;
  @useResult
  $Res call(
      {String reservationId,
      String storeName,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime pickupTime,
      double totalPrice});
}

/// @nodoc
class _$ReadReservationResponseCopyWithImpl<$Res,
        $Val extends ReadReservationResponse>
    implements $ReadReservationResponseCopyWith<$Res> {
  _$ReadReservationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadReservationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationId = null,
    Object? storeName = null,
    Object? createdAt = null,
    Object? pickupTime = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      reservationId: null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadReservationResponseImplCopyWith<$Res>
    implements $ReadReservationResponseCopyWith<$Res> {
  factory _$$ReadReservationResponseImplCopyWith(
          _$ReadReservationResponseImpl value,
          $Res Function(_$ReadReservationResponseImpl) then) =
      __$$ReadReservationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reservationId,
      String storeName,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime pickupTime,
      double totalPrice});
}

/// @nodoc
class __$$ReadReservationResponseImplCopyWithImpl<$Res>
    extends _$ReadReservationResponseCopyWithImpl<$Res,
        _$ReadReservationResponseImpl>
    implements _$$ReadReservationResponseImplCopyWith<$Res> {
  __$$ReadReservationResponseImplCopyWithImpl(
      _$ReadReservationResponseImpl _value,
      $Res Function(_$ReadReservationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadReservationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationId = null,
    Object? storeName = null,
    Object? createdAt = null,
    Object? pickupTime = null,
    Object? totalPrice = null,
  }) {
    return _then(_$ReadReservationResponseImpl(
      reservationId: null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadReservationResponseImpl implements _ReadReservationResponse {
  _$ReadReservationResponseImpl(
      {required this.reservationId,
      required this.storeName,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.pickupTime,
      required this.totalPrice});

  factory _$ReadReservationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadReservationResponseImplFromJson(json);

  @override
  final String reservationId;
  @override
  final String storeName;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @TimestampConverter()
  final DateTime pickupTime;
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'ReadReservationResponse(reservationId: $reservationId, storeName: $storeName, createdAt: $createdAt, pickupTime: $pickupTime, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadReservationResponseImpl &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, reservationId, storeName, createdAt, pickupTime, totalPrice);

  /// Create a copy of ReadReservationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadReservationResponseImplCopyWith<_$ReadReservationResponseImpl>
      get copyWith => __$$ReadReservationResponseImplCopyWithImpl<
          _$ReadReservationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadReservationResponseImplToJson(
      this,
    );
  }
}

abstract class _ReadReservationResponse implements ReadReservationResponse {
  factory _ReadReservationResponse(
      {required final String reservationId,
      required final String storeName,
      @TimestampConverter() required final DateTime createdAt,
      @TimestampConverter() required final DateTime pickupTime,
      required final double totalPrice}) = _$ReadReservationResponseImpl;

  factory _ReadReservationResponse.fromJson(Map<String, dynamic> json) =
      _$ReadReservationResponseImpl.fromJson;

  @override
  String get reservationId;
  @override
  String get storeName;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @TimestampConverter()
  DateTime get pickupTime;
  @override
  double get totalPrice;

  /// Create a copy of ReadReservationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadReservationResponseImplCopyWith<_$ReadReservationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
