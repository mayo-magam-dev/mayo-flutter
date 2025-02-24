// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_first_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadFirstItemResponse _$ReadFirstItemResponseFromJson(
    Map<String, dynamic> json) {
  return _ReadFirstItemResponse.fromJson(json);
}

/// @nodoc
mixin _$ReadFirstItemResponse {
  String get itemName => throw _privateConstructorUsedError;
  int get itemQuantity => throw _privateConstructorUsedError;

  /// Serializes this ReadFirstItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadFirstItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadFirstItemResponseCopyWith<ReadFirstItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadFirstItemResponseCopyWith<$Res> {
  factory $ReadFirstItemResponseCopyWith(ReadFirstItemResponse value,
          $Res Function(ReadFirstItemResponse) then) =
      _$ReadFirstItemResponseCopyWithImpl<$Res, ReadFirstItemResponse>;
  @useResult
  $Res call({String itemName, int itemQuantity});
}

/// @nodoc
class _$ReadFirstItemResponseCopyWithImpl<$Res,
        $Val extends ReadFirstItemResponse>
    implements $ReadFirstItemResponseCopyWith<$Res> {
  _$ReadFirstItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadFirstItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? itemQuantity = null,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemQuantity: null == itemQuantity
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadFirstItemResponseImplCopyWith<$Res>
    implements $ReadFirstItemResponseCopyWith<$Res> {
  factory _$$ReadFirstItemResponseImplCopyWith(
          _$ReadFirstItemResponseImpl value,
          $Res Function(_$ReadFirstItemResponseImpl) then) =
      __$$ReadFirstItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemName, int itemQuantity});
}

/// @nodoc
class __$$ReadFirstItemResponseImplCopyWithImpl<$Res>
    extends _$ReadFirstItemResponseCopyWithImpl<$Res,
        _$ReadFirstItemResponseImpl>
    implements _$$ReadFirstItemResponseImplCopyWith<$Res> {
  __$$ReadFirstItemResponseImplCopyWithImpl(_$ReadFirstItemResponseImpl _value,
      $Res Function(_$ReadFirstItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadFirstItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? itemQuantity = null,
  }) {
    return _then(_$ReadFirstItemResponseImpl(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
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
class _$ReadFirstItemResponseImpl implements _ReadFirstItemResponse {
  _$ReadFirstItemResponseImpl(
      {required this.itemName, required this.itemQuantity});

  factory _$ReadFirstItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadFirstItemResponseImplFromJson(json);

  @override
  final String itemName;
  @override
  final int itemQuantity;

  @override
  String toString() {
    return 'ReadFirstItemResponse(itemName: $itemName, itemQuantity: $itemQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadFirstItemResponseImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemQuantity, itemQuantity) ||
                other.itemQuantity == itemQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemName, itemQuantity);

  /// Create a copy of ReadFirstItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadFirstItemResponseImplCopyWith<_$ReadFirstItemResponseImpl>
      get copyWith => __$$ReadFirstItemResponseImplCopyWithImpl<
          _$ReadFirstItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadFirstItemResponseImplToJson(
      this,
    );
  }
}

abstract class _ReadFirstItemResponse implements ReadFirstItemResponse {
  factory _ReadFirstItemResponse(
      {required final String itemName,
      required final int itemQuantity}) = _$ReadFirstItemResponseImpl;

  factory _ReadFirstItemResponse.fromJson(Map<String, dynamic> json) =
      _$ReadFirstItemResponseImpl.fromJson;

  @override
  String get itemName;
  @override
  int get itemQuantity;

  /// Create a copy of ReadFirstItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadFirstItemResponseImplCopyWith<_$ReadFirstItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
