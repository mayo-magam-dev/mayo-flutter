// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteCartRequest _$DeleteCartRequestFromJson(Map<String, dynamic> json) {
  return _DeleteCartRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteCartRequest {
  String get cartId => throw _privateConstructorUsedError;

  /// Serializes this DeleteCartRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteCartRequestCopyWith<DeleteCartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCartRequestCopyWith<$Res> {
  factory $DeleteCartRequestCopyWith(
          DeleteCartRequest value, $Res Function(DeleteCartRequest) then) =
      _$DeleteCartRequestCopyWithImpl<$Res, DeleteCartRequest>;
  @useResult
  $Res call({String cartId});
}

/// @nodoc
class _$DeleteCartRequestCopyWithImpl<$Res, $Val extends DeleteCartRequest>
    implements $DeleteCartRequestCopyWith<$Res> {
  _$DeleteCartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCartRequestImplCopyWith<$Res>
    implements $DeleteCartRequestCopyWith<$Res> {
  factory _$$DeleteCartRequestImplCopyWith(_$DeleteCartRequestImpl value,
          $Res Function(_$DeleteCartRequestImpl) then) =
      __$$DeleteCartRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cartId});
}

/// @nodoc
class __$$DeleteCartRequestImplCopyWithImpl<$Res>
    extends _$DeleteCartRequestCopyWithImpl<$Res, _$DeleteCartRequestImpl>
    implements _$$DeleteCartRequestImplCopyWith<$Res> {
  __$$DeleteCartRequestImplCopyWithImpl(_$DeleteCartRequestImpl _value,
      $Res Function(_$DeleteCartRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
  }) {
    return _then(_$DeleteCartRequestImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteCartRequestImpl implements _DeleteCartRequest {
  _$DeleteCartRequestImpl({required this.cartId});

  factory _$DeleteCartRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteCartRequestImplFromJson(json);

  @override
  final String cartId;

  @override
  String toString() {
    return 'DeleteCartRequest(cartId: $cartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartRequestImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId);

  /// Create a copy of DeleteCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartRequestImplCopyWith<_$DeleteCartRequestImpl> get copyWith =>
      __$$DeleteCartRequestImplCopyWithImpl<_$DeleteCartRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCartRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteCartRequest implements DeleteCartRequest {
  factory _DeleteCartRequest({required final String cartId}) =
      _$DeleteCartRequestImpl;

  factory _DeleteCartRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteCartRequestImpl.fromJson;

  @override
  String get cartId;

  /// Create a copy of DeleteCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCartRequestImplCopyWith<_$DeleteCartRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
