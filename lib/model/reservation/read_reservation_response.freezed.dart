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
  String get storeImage => throw _privateConstructorUsedError;
  ReadFirstItem get firstItem => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  @CreatedAtTimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get reservationState => throw _privateConstructorUsedError;

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
      String storeImage,
      ReadFirstItem firstItem,
      double totalPrice,
      @CreatedAtTimestampConverter() DateTime createdAt,
      int reservationState});

  $ReadFirstItemCopyWith<$Res> get firstItem;
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
    Object? storeImage = null,
    Object? firstItem = null,
    Object? totalPrice = null,
    Object? createdAt = null,
    Object? reservationState = null,
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
      storeImage: null == storeImage
          ? _value.storeImage
          : storeImage // ignore: cast_nullable_to_non_nullable
              as String,
      firstItem: null == firstItem
          ? _value.firstItem
          : firstItem // ignore: cast_nullable_to_non_nullable
              as ReadFirstItem,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservationState: null == reservationState
          ? _value.reservationState
          : reservationState // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ReadReservationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReadFirstItemCopyWith<$Res> get firstItem {
    return $ReadFirstItemCopyWith<$Res>(_value.firstItem, (value) {
      return _then(_value.copyWith(firstItem: value) as $Val);
    });
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
      String storeImage,
      ReadFirstItem firstItem,
      double totalPrice,
      @CreatedAtTimestampConverter() DateTime createdAt,
      int reservationState});

  @override
  $ReadFirstItemCopyWith<$Res> get firstItem;
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
    Object? storeImage = null,
    Object? firstItem = null,
    Object? totalPrice = null,
    Object? createdAt = null,
    Object? reservationState = null,
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
      storeImage: null == storeImage
          ? _value.storeImage
          : storeImage // ignore: cast_nullable_to_non_nullable
              as String,
      firstItem: null == firstItem
          ? _value.firstItem
          : firstItem // ignore: cast_nullable_to_non_nullable
              as ReadFirstItem,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reservationState: null == reservationState
          ? _value.reservationState
          : reservationState // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadReservationResponseImpl implements _ReadReservationResponse {
  _$ReadReservationResponseImpl(
      {required this.reservationId,
      required this.storeName,
      required this.storeImage,
      required this.firstItem,
      required this.totalPrice,
      @CreatedAtTimestampConverter() required this.createdAt,
      required this.reservationState});

  factory _$ReadReservationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadReservationResponseImplFromJson(json);

  @override
  final String reservationId;
  @override
  final String storeName;
  @override
  final String storeImage;
  @override
  final ReadFirstItem firstItem;
  @override
  final double totalPrice;
  @override
  @CreatedAtTimestampConverter()
  final DateTime createdAt;
  @override
  final int reservationState;

  @override
  String toString() {
    return 'ReadReservationResponse(reservationId: $reservationId, storeName: $storeName, storeImage: $storeImage, firstItem: $firstItem, totalPrice: $totalPrice, createdAt: $createdAt, reservationState: $reservationState)';
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
            (identical(other.storeImage, storeImage) ||
                other.storeImage == storeImage) &&
            (identical(other.firstItem, firstItem) ||
                other.firstItem == firstItem) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.reservationState, reservationState) ||
                other.reservationState == reservationState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reservationId, storeName,
      storeImage, firstItem, totalPrice, createdAt, reservationState);

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
      required final String storeImage,
      required final ReadFirstItem firstItem,
      required final double totalPrice,
      @CreatedAtTimestampConverter() required final DateTime createdAt,
      required final int reservationState}) = _$ReadReservationResponseImpl;

  factory _ReadReservationResponse.fromJson(Map<String, dynamic> json) =
      _$ReadReservationResponseImpl.fromJson;

  @override
  String get reservationId;
  @override
  String get storeName;
  @override
  String get storeImage;
  @override
  ReadFirstItem get firstItem;
  @override
  double get totalPrice;
  @override
  @CreatedAtTimestampConverter()
  DateTime get createdAt;
  @override
  int get reservationState;

  /// Create a copy of ReadReservationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadReservationResponseImplCopyWith<_$ReadReservationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
