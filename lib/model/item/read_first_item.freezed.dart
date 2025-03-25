// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_first_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadFirstItem _$ReadFirstItemFromJson(Map<String, dynamic> json) {
  return _ReadFirstItem.fromJson(json);
}

/// @nodoc
mixin _$ReadFirstItem {
  String get itemName => throw _privateConstructorUsedError;
  int get itemQuantity => throw _privateConstructorUsedError;

  /// Serializes this ReadFirstItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadFirstItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadFirstItemCopyWith<ReadFirstItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadFirstItemCopyWith<$Res> {
  factory $ReadFirstItemCopyWith(
          ReadFirstItem value, $Res Function(ReadFirstItem) then) =
      _$ReadFirstItemCopyWithImpl<$Res, ReadFirstItem>;
  @useResult
  $Res call({String itemName, int itemQuantity});
}

/// @nodoc
class _$ReadFirstItemCopyWithImpl<$Res, $Val extends ReadFirstItem>
    implements $ReadFirstItemCopyWith<$Res> {
  _$ReadFirstItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadFirstItem
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
abstract class _$$ReadFirstItemImplCopyWith<$Res>
    implements $ReadFirstItemCopyWith<$Res> {
  factory _$$ReadFirstItemImplCopyWith(
          _$ReadFirstItemImpl value, $Res Function(_$ReadFirstItemImpl) then) =
      __$$ReadFirstItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemName, int itemQuantity});
}

/// @nodoc
class __$$ReadFirstItemImplCopyWithImpl<$Res>
    extends _$ReadFirstItemCopyWithImpl<$Res, _$ReadFirstItemImpl>
    implements _$$ReadFirstItemImplCopyWith<$Res> {
  __$$ReadFirstItemImplCopyWithImpl(
      _$ReadFirstItemImpl _value, $Res Function(_$ReadFirstItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadFirstItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? itemQuantity = null,
  }) {
    return _then(_$ReadFirstItemImpl(
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
class _$ReadFirstItemImpl implements _ReadFirstItem {
  _$ReadFirstItemImpl({required this.itemName, required this.itemQuantity});

  factory _$ReadFirstItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadFirstItemImplFromJson(json);

  @override
  final String itemName;
  @override
  final int itemQuantity;

  @override
  String toString() {
    return 'ReadFirstItem(itemName: $itemName, itemQuantity: $itemQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadFirstItemImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemQuantity, itemQuantity) ||
                other.itemQuantity == itemQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemName, itemQuantity);

  /// Create a copy of ReadFirstItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadFirstItemImplCopyWith<_$ReadFirstItemImpl> get copyWith =>
      __$$ReadFirstItemImplCopyWithImpl<_$ReadFirstItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadFirstItemImplToJson(
      this,
    );
  }
}

abstract class _ReadFirstItem implements ReadFirstItem {
  factory _ReadFirstItem(
      {required final String itemName,
      required final int itemQuantity}) = _$ReadFirstItemImpl;

  factory _ReadFirstItem.fromJson(Map<String, dynamic> json) =
      _$ReadFirstItemImpl.fromJson;

  @override
  String get itemName;
  @override
  int get itemQuantity;

  /// Create a copy of ReadFirstItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadFirstItemImplCopyWith<_$ReadFirstItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
