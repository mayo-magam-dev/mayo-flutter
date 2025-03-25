// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_recently_store_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadRecentlyStoreResponse _$ReadRecentlyStoreResponseFromJson(
    Map<String, dynamic> json) {
  return _ReadRecentlyStoreResponse.fromJson(json);
}

/// @nodoc
mixin _$ReadRecentlyStoreResponse {
  String get id => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  bool get openState => throw _privateConstructorUsedError;
  int get storeSellingType => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get mainImage => throw _privateConstructorUsedError;

  /// Serializes this ReadRecentlyStoreResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadRecentlyStoreResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadRecentlyStoreResponseCopyWith<ReadRecentlyStoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadRecentlyStoreResponseCopyWith<$Res> {
  factory $ReadRecentlyStoreResponseCopyWith(ReadRecentlyStoreResponse value,
          $Res Function(ReadRecentlyStoreResponse) then) =
      _$ReadRecentlyStoreResponseCopyWithImpl<$Res, ReadRecentlyStoreResponse>;
  @useResult
  $Res call(
      {String id,
      String storeName,
      bool openState,
      int storeSellingType,
      String address,
      String? mainImage});
}

/// @nodoc
class _$ReadRecentlyStoreResponseCopyWithImpl<$Res,
        $Val extends ReadRecentlyStoreResponse>
    implements $ReadRecentlyStoreResponseCopyWith<$Res> {
  _$ReadRecentlyStoreResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadRecentlyStoreResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeName = null,
    Object? openState = null,
    Object? storeSellingType = null,
    Object? address = null,
    Object? mainImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      openState: null == openState
          ? _value.openState
          : openState // ignore: cast_nullable_to_non_nullable
              as bool,
      storeSellingType: null == storeSellingType
          ? _value.storeSellingType
          : storeSellingType // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadRecentlyStoreResponseImplCopyWith<$Res>
    implements $ReadRecentlyStoreResponseCopyWith<$Res> {
  factory _$$ReadRecentlyStoreResponseImplCopyWith(
          _$ReadRecentlyStoreResponseImpl value,
          $Res Function(_$ReadRecentlyStoreResponseImpl) then) =
      __$$ReadRecentlyStoreResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String storeName,
      bool openState,
      int storeSellingType,
      String address,
      String? mainImage});
}

/// @nodoc
class __$$ReadRecentlyStoreResponseImplCopyWithImpl<$Res>
    extends _$ReadRecentlyStoreResponseCopyWithImpl<$Res,
        _$ReadRecentlyStoreResponseImpl>
    implements _$$ReadRecentlyStoreResponseImplCopyWith<$Res> {
  __$$ReadRecentlyStoreResponseImplCopyWithImpl(
      _$ReadRecentlyStoreResponseImpl _value,
      $Res Function(_$ReadRecentlyStoreResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadRecentlyStoreResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeName = null,
    Object? openState = null,
    Object? storeSellingType = null,
    Object? address = null,
    Object? mainImage = freezed,
  }) {
    return _then(_$ReadRecentlyStoreResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      openState: null == openState
          ? _value.openState
          : openState // ignore: cast_nullable_to_non_nullable
              as bool,
      storeSellingType: null == storeSellingType
          ? _value.storeSellingType
          : storeSellingType // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadRecentlyStoreResponseImpl implements _ReadRecentlyStoreResponse {
  _$ReadRecentlyStoreResponseImpl(
      {required this.id,
      required this.storeName,
      required this.openState,
      required this.storeSellingType,
      required this.address,
      this.mainImage});

  factory _$ReadRecentlyStoreResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadRecentlyStoreResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String storeName;
  @override
  final bool openState;
  @override
  final int storeSellingType;
  @override
  final String address;
  @override
  final String? mainImage;

  @override
  String toString() {
    return 'ReadRecentlyStoreResponse(id: $id, storeName: $storeName, openState: $openState, storeSellingType: $storeSellingType, address: $address, mainImage: $mainImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadRecentlyStoreResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.openState, openState) ||
                other.openState == openState) &&
            (identical(other.storeSellingType, storeSellingType) ||
                other.storeSellingType == storeSellingType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, storeName, openState,
      storeSellingType, address, mainImage);

  /// Create a copy of ReadRecentlyStoreResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadRecentlyStoreResponseImplCopyWith<_$ReadRecentlyStoreResponseImpl>
      get copyWith => __$$ReadRecentlyStoreResponseImplCopyWithImpl<
          _$ReadRecentlyStoreResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadRecentlyStoreResponseImplToJson(
      this,
    );
  }
}

abstract class _ReadRecentlyStoreResponse implements ReadRecentlyStoreResponse {
  factory _ReadRecentlyStoreResponse(
      {required final String id,
      required final String storeName,
      required final bool openState,
      required final int storeSellingType,
      required final String address,
      final String? mainImage}) = _$ReadRecentlyStoreResponseImpl;

  factory _ReadRecentlyStoreResponse.fromJson(Map<String, dynamic> json) =
      _$ReadRecentlyStoreResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get storeName;
  @override
  bool get openState;
  @override
  int get storeSellingType;
  @override
  String get address;
  @override
  String? get mainImage;

  /// Create a copy of ReadRecentlyStoreResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadRecentlyStoreResponseImplCopyWith<_$ReadRecentlyStoreResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
