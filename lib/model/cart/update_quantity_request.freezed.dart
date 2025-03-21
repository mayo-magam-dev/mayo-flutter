// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_quantity_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateQuantityRequest _$UpdateQuantityRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateQuantityRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuantityRequest {
  String get cartId => throw _privateConstructorUsedError;
  int get itemQuantity => throw _privateConstructorUsedError;

  /// Serializes this UpdateQuantityRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateQuantityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateQuantityRequestCopyWith<UpdateQuantityRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuantityRequestCopyWith<$Res> {
  factory $UpdateQuantityRequestCopyWith(UpdateQuantityRequest value,
          $Res Function(UpdateQuantityRequest) then) =
      _$UpdateQuantityRequestCopyWithImpl<$Res, UpdateQuantityRequest>;
  @useResult
  $Res call({String cartId, int itemQuantity});
}

/// @nodoc
class _$UpdateQuantityRequestCopyWithImpl<$Res,
        $Val extends UpdateQuantityRequest>
    implements $UpdateQuantityRequestCopyWith<$Res> {
  _$UpdateQuantityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateQuantityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? itemQuantity = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      itemQuantity: null == itemQuantity
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateQuantityRequestImplCopyWith<$Res>
    implements $UpdateQuantityRequestCopyWith<$Res> {
  factory _$$UpdateQuantityRequestImplCopyWith(
          _$UpdateQuantityRequestImpl value,
          $Res Function(_$UpdateQuantityRequestImpl) then) =
      __$$UpdateQuantityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cartId, int itemQuantity});
}

/// @nodoc
class __$$UpdateQuantityRequestImplCopyWithImpl<$Res>
    extends _$UpdateQuantityRequestCopyWithImpl<$Res,
        _$UpdateQuantityRequestImpl>
    implements _$$UpdateQuantityRequestImplCopyWith<$Res> {
  __$$UpdateQuantityRequestImplCopyWithImpl(_$UpdateQuantityRequestImpl _value,
      $Res Function(_$UpdateQuantityRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateQuantityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? itemQuantity = null,
  }) {
    return _then(_$UpdateQuantityRequestImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      itemQuantity: null == itemQuantity
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateQuantityRequestImpl implements _UpdateQuantityRequest {
  _$UpdateQuantityRequestImpl(
      {required this.cartId, required this.itemQuantity});

  factory _$UpdateQuantityRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateQuantityRequestImplFromJson(json);

  @override
  final String cartId;
  @override
  final int itemQuantity;

  @override
  String toString() {
    return 'UpdateQuantityRequest(cartId: $cartId, itemQuantity: $itemQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityRequestImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.itemQuantity, itemQuantity) ||
                other.itemQuantity == itemQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, itemQuantity);

  /// Create a copy of UpdateQuantityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityRequestImplCopyWith<_$UpdateQuantityRequestImpl>
      get copyWith => __$$UpdateQuantityRequestImplCopyWithImpl<
          _$UpdateQuantityRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuantityRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuantityRequest implements UpdateQuantityRequest {
  factory _UpdateQuantityRequest(
      {required final String cartId,
      required final int itemQuantity}) = _$UpdateQuantityRequestImpl;

  factory _UpdateQuantityRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateQuantityRequestImpl.fromJson;

  @override
  String get cartId;
  @override
  int get itemQuantity;

  /// Create a copy of UpdateQuantityRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQuantityRequestImplCopyWith<_$UpdateQuantityRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
