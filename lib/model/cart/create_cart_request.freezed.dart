// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCartRequest _$CreateCartRequestFromJson(Map<String, dynamic> json) {
  return _CreateCartRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateCartRequest {
  String get itemId => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;

  /// Serializes this CreateCartRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCartRequestCopyWith<CreateCartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartRequestCopyWith<$Res> {
  factory $CreateCartRequestCopyWith(
          CreateCartRequest value, $Res Function(CreateCartRequest) then) =
      _$CreateCartRequestCopyWithImpl<$Res, CreateCartRequest>;
  @useResult
  $Res call({String itemId, int itemCount, String storeId});
}

/// @nodoc
class _$CreateCartRequestCopyWithImpl<$Res, $Val extends CreateCartRequest>
    implements $CreateCartRequestCopyWith<$Res> {
  _$CreateCartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemCount = null,
    Object? storeId = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCartRequestImplCopyWith<$Res>
    implements $CreateCartRequestCopyWith<$Res> {
  factory _$$CreateCartRequestImplCopyWith(_$CreateCartRequestImpl value,
          $Res Function(_$CreateCartRequestImpl) then) =
      __$$CreateCartRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemId, int itemCount, String storeId});
}

/// @nodoc
class __$$CreateCartRequestImplCopyWithImpl<$Res>
    extends _$CreateCartRequestCopyWithImpl<$Res, _$CreateCartRequestImpl>
    implements _$$CreateCartRequestImplCopyWith<$Res> {
  __$$CreateCartRequestImplCopyWithImpl(_$CreateCartRequestImpl _value,
      $Res Function(_$CreateCartRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemCount = null,
    Object? storeId = null,
  }) {
    return _then(_$CreateCartRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCartRequestImpl implements _CreateCartRequest {
  _$CreateCartRequestImpl(
      {required this.itemId, required this.itemCount, required this.storeId});

  factory _$CreateCartRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCartRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final int itemCount;
  @override
  final String storeId;

  @override
  String toString() {
    return 'CreateCartRequest(itemId: $itemId, itemCount: $itemCount, storeId: $storeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCartRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount) &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, itemCount, storeId);

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCartRequestImplCopyWith<_$CreateCartRequestImpl> get copyWith =>
      __$$CreateCartRequestImplCopyWithImpl<_$CreateCartRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCartRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateCartRequest implements CreateCartRequest {
  factory _CreateCartRequest(
      {required final String itemId,
      required final int itemCount,
      required final String storeId}) = _$CreateCartRequestImpl;

  factory _CreateCartRequest.fromJson(Map<String, dynamic> json) =
      _$CreateCartRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  int get itemCount;
  @override
  String get storeId;

  /// Create a copy of CreateCartRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCartRequestImplCopyWith<_$CreateCartRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
