// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_reservation_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadReservationDetailResponse _$ReadReservationDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ReadReservationDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ReadReservationDetailResponse {
  String get storeName => throw _privateConstructorUsedError;
  String get storeNumber => throw _privateConstructorUsedError;
  @CreatedAtTimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @PickUpTimestampConverter()
  DateTime get pickupTime => throw _privateConstructorUsedError;
  String? get reservationId => throw _privateConstructorUsedError;
  List<ReadCartResponse> get cartList => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this ReadReservationDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadReservationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadReservationDetailResponseCopyWith<ReadReservationDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadReservationDetailResponseCopyWith<$Res> {
  factory $ReadReservationDetailResponseCopyWith(
          ReadReservationDetailResponse value,
          $Res Function(ReadReservationDetailResponse) then) =
      _$ReadReservationDetailResponseCopyWithImpl<$Res,
          ReadReservationDetailResponse>;
  @useResult
  $Res call(
      {String storeName,
      String storeNumber,
      @CreatedAtTimestampConverter() DateTime createdAt,
      @PickUpTimestampConverter() DateTime pickupTime,
      String? reservationId,
      List<ReadCartResponse> cartList,
      double totalPrice});
}

/// @nodoc
class _$ReadReservationDetailResponseCopyWithImpl<$Res,
        $Val extends ReadReservationDetailResponse>
    implements $ReadReservationDetailResponseCopyWith<$Res> {
  _$ReadReservationDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadReservationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = null,
    Object? storeNumber = null,
    Object? createdAt = null,
    Object? pickupTime = null,
    Object? reservationId = freezed,
    Object? cartList = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      storeNumber: null == storeNumber
          ? _value.storeNumber
          : storeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservationId: freezed == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String?,
      cartList: null == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<ReadCartResponse>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadReservationDetailResponseImplCopyWith<$Res>
    implements $ReadReservationDetailResponseCopyWith<$Res> {
  factory _$$ReadReservationDetailResponseImplCopyWith(
          _$ReadReservationDetailResponseImpl value,
          $Res Function(_$ReadReservationDetailResponseImpl) then) =
      __$$ReadReservationDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String storeName,
      String storeNumber,
      @CreatedAtTimestampConverter() DateTime createdAt,
      @PickUpTimestampConverter() DateTime pickupTime,
      String? reservationId,
      List<ReadCartResponse> cartList,
      double totalPrice});
}

/// @nodoc
class __$$ReadReservationDetailResponseImplCopyWithImpl<$Res>
    extends _$ReadReservationDetailResponseCopyWithImpl<$Res,
        _$ReadReservationDetailResponseImpl>
    implements _$$ReadReservationDetailResponseImplCopyWith<$Res> {
  __$$ReadReservationDetailResponseImplCopyWithImpl(
      _$ReadReservationDetailResponseImpl _value,
      $Res Function(_$ReadReservationDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadReservationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = null,
    Object? storeNumber = null,
    Object? createdAt = null,
    Object? pickupTime = null,
    Object? reservationId = freezed,
    Object? cartList = null,
    Object? totalPrice = null,
  }) {
    return _then(_$ReadReservationDetailResponseImpl(
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      storeNumber: null == storeNumber
          ? _value.storeNumber
          : storeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickupTime: null == pickupTime
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservationId: freezed == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String?,
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<ReadCartResponse>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadReservationDetailResponseImpl
    implements _ReadReservationDetailResponse {
  _$ReadReservationDetailResponseImpl(
      {required this.storeName,
      required this.storeNumber,
      @CreatedAtTimestampConverter() required this.createdAt,
      @PickUpTimestampConverter() required this.pickupTime,
      this.reservationId,
      required final List<ReadCartResponse> cartList,
      required this.totalPrice})
      : _cartList = cartList;

  factory _$ReadReservationDetailResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReadReservationDetailResponseImplFromJson(json);

  @override
  final String storeName;
  @override
  final String storeNumber;
  @override
  @CreatedAtTimestampConverter()
  final DateTime createdAt;
  @override
  @PickUpTimestampConverter()
  final DateTime pickupTime;
  @override
  final String? reservationId;
  final List<ReadCartResponse> _cartList;
  @override
  List<ReadCartResponse> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  final double totalPrice;

  @override
  String toString() {
    return 'ReadReservationDetailResponse(storeName: $storeName, storeNumber: $storeNumber, createdAt: $createdAt, pickupTime: $pickupTime, reservationId: $reservationId, cartList: $cartList, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadReservationDetailResponseImpl &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.storeNumber, storeNumber) ||
                other.storeNumber == storeNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      storeName,
      storeNumber,
      createdAt,
      pickupTime,
      reservationId,
      const DeepCollectionEquality().hash(_cartList),
      totalPrice);

  /// Create a copy of ReadReservationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadReservationDetailResponseImplCopyWith<
          _$ReadReservationDetailResponseImpl>
      get copyWith => __$$ReadReservationDetailResponseImplCopyWithImpl<
          _$ReadReservationDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadReservationDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ReadReservationDetailResponse
    implements ReadReservationDetailResponse {
  factory _ReadReservationDetailResponse(
      {required final String storeName,
      required final String storeNumber,
      @CreatedAtTimestampConverter() required final DateTime createdAt,
      @PickUpTimestampConverter() required final DateTime pickupTime,
      final String? reservationId,
      required final List<ReadCartResponse> cartList,
      required final double totalPrice}) = _$ReadReservationDetailResponseImpl;

  factory _ReadReservationDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ReadReservationDetailResponseImpl.fromJson;

  @override
  String get storeName;
  @override
  String get storeNumber;
  @override
  @CreatedAtTimestampConverter()
  DateTime get createdAt;
  @override
  @PickUpTimestampConverter()
  DateTime get pickupTime;
  @override
  String? get reservationId;
  @override
  List<ReadCartResponse> get cartList;
  @override
  double get totalPrice;

  /// Create a copy of ReadReservationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadReservationDetailResponseImplCopyWith<
          _$ReadReservationDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
