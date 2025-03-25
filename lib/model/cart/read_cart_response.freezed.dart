// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadCartResponse _$ReadCartResponseFromJson(Map<String, dynamic> json) {
  return _ReadCartResponse.fromJson(json);
}

/// @nodoc
mixin _$ReadCartResponse {
  String get cartId => throw _privateConstructorUsedError;
  int get cartItemCount => throw _privateConstructorUsedError;
  int get itemQuantity => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get itemImage => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;

  /// Serializes this ReadCartResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadCartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadCartResponseCopyWith<ReadCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadCartResponseCopyWith<$Res> {
  factory $ReadCartResponseCopyWith(
          ReadCartResponse value, $Res Function(ReadCartResponse) then) =
      _$ReadCartResponseCopyWithImpl<$Res, ReadCartResponse>;
  @useResult
  $Res call(
      {String cartId,
      int cartItemCount,
      int itemQuantity,
      double subtotal,
      String itemName,
      String itemImage,
      String storeId});
}

/// @nodoc
class _$ReadCartResponseCopyWithImpl<$Res, $Val extends ReadCartResponse>
    implements $ReadCartResponseCopyWith<$Res> {
  _$ReadCartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadCartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? cartItemCount = null,
    Object? itemQuantity = null,
    Object? subtotal = null,
    Object? itemName = null,
    Object? itemImage = null,
    Object? storeId = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      cartItemCount: null == cartItemCount
          ? _value.cartItemCount
          : cartItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      itemQuantity: null == itemQuantity
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemImage: null == itemImage
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadCartResponseImplCopyWith<$Res>
    implements $ReadCartResponseCopyWith<$Res> {
  factory _$$ReadCartResponseImplCopyWith(_$ReadCartResponseImpl value,
          $Res Function(_$ReadCartResponseImpl) then) =
      __$$ReadCartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cartId,
      int cartItemCount,
      int itemQuantity,
      double subtotal,
      String itemName,
      String itemImage,
      String storeId});
}

/// @nodoc
class __$$ReadCartResponseImplCopyWithImpl<$Res>
    extends _$ReadCartResponseCopyWithImpl<$Res, _$ReadCartResponseImpl>
    implements _$$ReadCartResponseImplCopyWith<$Res> {
  __$$ReadCartResponseImplCopyWithImpl(_$ReadCartResponseImpl _value,
      $Res Function(_$ReadCartResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadCartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? cartItemCount = null,
    Object? itemQuantity = null,
    Object? subtotal = null,
    Object? itemName = null,
    Object? itemImage = null,
    Object? storeId = null,
  }) {
    return _then(_$ReadCartResponseImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      cartItemCount: null == cartItemCount
          ? _value.cartItemCount
          : cartItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      itemQuantity: null == itemQuantity
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemImage: null == itemImage
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadCartResponseImpl implements _ReadCartResponse {
  _$ReadCartResponseImpl(
      {required this.cartId,
      required this.cartItemCount,
      required this.itemQuantity,
      required this.subtotal,
      required this.itemName,
      required this.itemImage,
      required this.storeId});

  factory _$ReadCartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadCartResponseImplFromJson(json);

  @override
  final String cartId;
  @override
  final int cartItemCount;
  @override
  final int itemQuantity;
  @override
  final double subtotal;
  @override
  final String itemName;
  @override
  final String itemImage;
  @override
  final String storeId;

  @override
  String toString() {
    return 'ReadCartResponse(cartId: $cartId, cartItemCount: $cartItemCount, itemQuantity: $itemQuantity, subtotal: $subtotal, itemName: $itemName, itemImage: $itemImage, storeId: $storeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadCartResponseImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.cartItemCount, cartItemCount) ||
                other.cartItemCount == cartItemCount) &&
            (identical(other.itemQuantity, itemQuantity) ||
                other.itemQuantity == itemQuantity) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemImage, itemImage) ||
                other.itemImage == itemImage) &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, cartItemCount,
      itemQuantity, subtotal, itemName, itemImage, storeId);

  /// Create a copy of ReadCartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadCartResponseImplCopyWith<_$ReadCartResponseImpl> get copyWith =>
      __$$ReadCartResponseImplCopyWithImpl<_$ReadCartResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadCartResponseImplToJson(
      this,
    );
  }
}

abstract class _ReadCartResponse implements ReadCartResponse {
  factory _ReadCartResponse(
      {required final String cartId,
      required final int cartItemCount,
      required final int itemQuantity,
      required final double subtotal,
      required final String itemName,
      required final String itemImage,
      required final String storeId}) = _$ReadCartResponseImpl;

  factory _ReadCartResponse.fromJson(Map<String, dynamic> json) =
      _$ReadCartResponseImpl.fromJson;

  @override
  String get cartId;
  @override
  int get cartItemCount;
  @override
  int get itemQuantity;
  @override
  double get subtotal;
  @override
  String get itemName;
  @override
  String get itemImage;
  @override
  String get storeId;

  /// Create a copy of ReadCartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadCartResponseImplCopyWith<_$ReadCartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
