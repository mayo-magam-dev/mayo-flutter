// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadStore _$ReadStoreFromJson(Map<String, dynamic> json) {
  return _ReadStore.fromJson(json);
}

/// @nodoc
mixin _$ReadStore {
  String get id => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  bool get openState => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get storeImage => throw _privateConstructorUsedError;
  String get openTime => throw _privateConstructorUsedError;
  String get closeTime => throw _privateConstructorUsedError;
  String get saleStart => throw _privateConstructorUsedError;
  String get saleEnd => throw _privateConstructorUsedError;
  String? get storeDescription => throw _privateConstructorUsedError;
  String? get storeNumber => throw _privateConstructorUsedError;
  String? get storeMapUrl => throw _privateConstructorUsedError;
  String? get originInfo => throw _privateConstructorUsedError;
  String? get additionalComment => throw _privateConstructorUsedError;
  int get storeCategory => throw _privateConstructorUsedError;
  int get storeSellingType =>
      throw _privateConstructorUsedError; // 1 : 포장, 2 : 매장, 3 : 포장·매장
  String? get mainImage => throw _privateConstructorUsedError;

  /// Serializes this ReadStore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadStoreCopyWith<ReadStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadStoreCopyWith<$Res> {
  factory $ReadStoreCopyWith(ReadStore value, $Res Function(ReadStore) then) =
      _$ReadStoreCopyWithImpl<$Res, ReadStore>;
  @useResult
  $Res call(
      {String id,
      String storeName,
      bool openState,
      String address,
      String storeImage,
      String openTime,
      String closeTime,
      String saleStart,
      String saleEnd,
      String? storeDescription,
      String? storeNumber,
      String? storeMapUrl,
      String? originInfo,
      String? additionalComment,
      int storeCategory,
      int storeSellingType,
      String? mainImage});
}

/// @nodoc
class _$ReadStoreCopyWithImpl<$Res, $Val extends ReadStore>
    implements $ReadStoreCopyWith<$Res> {
  _$ReadStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeName = null,
    Object? openState = null,
    Object? address = null,
    Object? storeImage = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? saleStart = null,
    Object? saleEnd = null,
    Object? storeDescription = freezed,
    Object? storeNumber = freezed,
    Object? storeMapUrl = freezed,
    Object? originInfo = freezed,
    Object? additionalComment = freezed,
    Object? storeCategory = null,
    Object? storeSellingType = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      storeImage: null == storeImage
          ? _value.storeImage
          : storeImage // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      saleStart: null == saleStart
          ? _value.saleStart
          : saleStart // ignore: cast_nullable_to_non_nullable
              as String,
      saleEnd: null == saleEnd
          ? _value.saleEnd
          : saleEnd // ignore: cast_nullable_to_non_nullable
              as String,
      storeDescription: freezed == storeDescription
          ? _value.storeDescription
          : storeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      storeNumber: freezed == storeNumber
          ? _value.storeNumber
          : storeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      storeMapUrl: freezed == storeMapUrl
          ? _value.storeMapUrl
          : storeMapUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      originInfo: freezed == originInfo
          ? _value.originInfo
          : originInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalComment: freezed == additionalComment
          ? _value.additionalComment
          : additionalComment // ignore: cast_nullable_to_non_nullable
              as String?,
      storeCategory: null == storeCategory
          ? _value.storeCategory
          : storeCategory // ignore: cast_nullable_to_non_nullable
              as int,
      storeSellingType: null == storeSellingType
          ? _value.storeSellingType
          : storeSellingType // ignore: cast_nullable_to_non_nullable
              as int,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadStoreImplCopyWith<$Res>
    implements $ReadStoreCopyWith<$Res> {
  factory _$$ReadStoreImplCopyWith(
          _$ReadStoreImpl value, $Res Function(_$ReadStoreImpl) then) =
      __$$ReadStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String storeName,
      bool openState,
      String address,
      String storeImage,
      String openTime,
      String closeTime,
      String saleStart,
      String saleEnd,
      String? storeDescription,
      String? storeNumber,
      String? storeMapUrl,
      String? originInfo,
      String? additionalComment,
      int storeCategory,
      int storeSellingType,
      String? mainImage});
}

/// @nodoc
class __$$ReadStoreImplCopyWithImpl<$Res>
    extends _$ReadStoreCopyWithImpl<$Res, _$ReadStoreImpl>
    implements _$$ReadStoreImplCopyWith<$Res> {
  __$$ReadStoreImplCopyWithImpl(
      _$ReadStoreImpl _value, $Res Function(_$ReadStoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadStore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeName = null,
    Object? openState = null,
    Object? address = null,
    Object? storeImage = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? saleStart = null,
    Object? saleEnd = null,
    Object? storeDescription = freezed,
    Object? storeNumber = freezed,
    Object? storeMapUrl = freezed,
    Object? originInfo = freezed,
    Object? additionalComment = freezed,
    Object? storeCategory = null,
    Object? storeSellingType = null,
    Object? mainImage = freezed,
  }) {
    return _then(_$ReadStoreImpl(
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      storeImage: null == storeImage
          ? _value.storeImage
          : storeImage // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      saleStart: null == saleStart
          ? _value.saleStart
          : saleStart // ignore: cast_nullable_to_non_nullable
              as String,
      saleEnd: null == saleEnd
          ? _value.saleEnd
          : saleEnd // ignore: cast_nullable_to_non_nullable
              as String,
      storeDescription: freezed == storeDescription
          ? _value.storeDescription
          : storeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      storeNumber: freezed == storeNumber
          ? _value.storeNumber
          : storeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      storeMapUrl: freezed == storeMapUrl
          ? _value.storeMapUrl
          : storeMapUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      originInfo: freezed == originInfo
          ? _value.originInfo
          : originInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalComment: freezed == additionalComment
          ? _value.additionalComment
          : additionalComment // ignore: cast_nullable_to_non_nullable
              as String?,
      storeCategory: null == storeCategory
          ? _value.storeCategory
          : storeCategory // ignore: cast_nullable_to_non_nullable
              as int,
      storeSellingType: null == storeSellingType
          ? _value.storeSellingType
          : storeSellingType // ignore: cast_nullable_to_non_nullable
              as int,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadStoreImpl implements _ReadStore {
  _$ReadStoreImpl(
      {required this.id,
      required this.storeName,
      required this.openState,
      required this.address,
      required this.storeImage,
      required this.openTime,
      required this.closeTime,
      required this.saleStart,
      required this.saleEnd,
      this.storeDescription,
      this.storeNumber,
      this.storeMapUrl,
      this.originInfo,
      this.additionalComment,
      required this.storeCategory,
      required this.storeSellingType,
      this.mainImage});

  factory _$ReadStoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadStoreImplFromJson(json);

  @override
  final String id;
  @override
  final String storeName;
  @override
  final bool openState;
  @override
  final String address;
  @override
  final String storeImage;
  @override
  final String openTime;
  @override
  final String closeTime;
  @override
  final String saleStart;
  @override
  final String saleEnd;
  @override
  final String? storeDescription;
  @override
  final String? storeNumber;
  @override
  final String? storeMapUrl;
  @override
  final String? originInfo;
  @override
  final String? additionalComment;
  @override
  final int storeCategory;
  @override
  final int storeSellingType;
// 1 : 포장, 2 : 매장, 3 : 포장·매장
  @override
  final String? mainImage;

  @override
  String toString() {
    return 'ReadStore(id: $id, storeName: $storeName, openState: $openState, address: $address, storeImage: $storeImage, openTime: $openTime, closeTime: $closeTime, saleStart: $saleStart, saleEnd: $saleEnd, storeDescription: $storeDescription, storeNumber: $storeNumber, storeMapUrl: $storeMapUrl, originInfo: $originInfo, additionalComment: $additionalComment, storeCategory: $storeCategory, storeSellingType: $storeSellingType, mainImage: $mainImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadStoreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.openState, openState) ||
                other.openState == openState) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.storeImage, storeImage) ||
                other.storeImage == storeImage) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.saleStart, saleStart) ||
                other.saleStart == saleStart) &&
            (identical(other.saleEnd, saleEnd) || other.saleEnd == saleEnd) &&
            (identical(other.storeDescription, storeDescription) ||
                other.storeDescription == storeDescription) &&
            (identical(other.storeNumber, storeNumber) ||
                other.storeNumber == storeNumber) &&
            (identical(other.storeMapUrl, storeMapUrl) ||
                other.storeMapUrl == storeMapUrl) &&
            (identical(other.originInfo, originInfo) ||
                other.originInfo == originInfo) &&
            (identical(other.additionalComment, additionalComment) ||
                other.additionalComment == additionalComment) &&
            (identical(other.storeCategory, storeCategory) ||
                other.storeCategory == storeCategory) &&
            (identical(other.storeSellingType, storeSellingType) ||
                other.storeSellingType == storeSellingType) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeName,
      openState,
      address,
      storeImage,
      openTime,
      closeTime,
      saleStart,
      saleEnd,
      storeDescription,
      storeNumber,
      storeMapUrl,
      originInfo,
      additionalComment,
      storeCategory,
      storeSellingType,
      mainImage);

  /// Create a copy of ReadStore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadStoreImplCopyWith<_$ReadStoreImpl> get copyWith =>
      __$$ReadStoreImplCopyWithImpl<_$ReadStoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadStoreImplToJson(
      this,
    );
  }
}

abstract class _ReadStore implements ReadStore {
  factory _ReadStore(
      {required final String id,
      required final String storeName,
      required final bool openState,
      required final String address,
      required final String storeImage,
      required final String openTime,
      required final String closeTime,
      required final String saleStart,
      required final String saleEnd,
      final String? storeDescription,
      final String? storeNumber,
      final String? storeMapUrl,
      final String? originInfo,
      final String? additionalComment,
      required final int storeCategory,
      required final int storeSellingType,
      final String? mainImage}) = _$ReadStoreImpl;

  factory _ReadStore.fromJson(Map<String, dynamic> json) =
      _$ReadStoreImpl.fromJson;

  @override
  String get id;
  @override
  String get storeName;
  @override
  bool get openState;
  @override
  String get address;
  @override
  String get storeImage;
  @override
  String get openTime;
  @override
  String get closeTime;
  @override
  String get saleStart;
  @override
  String get saleEnd;
  @override
  String? get storeDescription;
  @override
  String? get storeNumber;
  @override
  String? get storeMapUrl;
  @override
  String? get originInfo;
  @override
  String? get additionalComment;
  @override
  int get storeCategory;
  @override
  int get storeSellingType; // 1 : 포장, 2 : 매장, 3 : 포장·매장
  @override
  String? get mainImage;

  /// Create a copy of ReadStore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadStoreImplCopyWith<_$ReadStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
