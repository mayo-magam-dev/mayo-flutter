// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return _AddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressResponse {
  List<Document> get documents => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  /// Serializes this AddressResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res, AddressResponse>;
  @useResult
  $Res call({List<Document> documents, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res, $Val extends AddressResponse>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  /// Create a copy of AddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressResponseImplCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$$AddressResponseImplCopyWith(_$AddressResponseImpl value,
          $Res Function(_$AddressResponseImpl) then) =
      __$$AddressResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Document> documents, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$AddressResponseImplCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res, _$AddressResponseImpl>
    implements _$$AddressResponseImplCopyWith<$Res> {
  __$$AddressResponseImplCopyWithImpl(
      _$AddressResponseImpl _value, $Res Function(_$AddressResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? meta = null,
  }) {
    return _then(_$AddressResponseImpl(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressResponseImpl implements _AddressResponse {
  const _$AddressResponseImpl(
      {required final List<Document> documents, required this.meta})
      : _documents = documents;

  factory _$AddressResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressResponseImplFromJson(json);

  final List<Document> _documents;
  @override
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final Meta meta;

  @override
  String toString() {
    return 'AddressResponse(documents: $documents, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_documents), meta);

  /// Create a copy of AddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressResponseImplCopyWith<_$AddressResponseImpl> get copyWith =>
      __$$AddressResponseImplCopyWithImpl<_$AddressResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressResponseImplToJson(
      this,
    );
  }
}

abstract class _AddressResponse implements AddressResponse {
  const factory _AddressResponse(
      {required final List<Document> documents,
      required final Meta meta}) = _$AddressResponseImpl;

  factory _AddressResponse.fromJson(Map<String, dynamic> json) =
      _$AddressResponseImpl.fromJson;

  @override
  List<Document> get documents;
  @override
  Meta get meta;

  /// Create a copy of AddressResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressResponseImplCopyWith<_$AddressResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_name')
  String get addressName => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_type')
  String get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: 'road_address')
  RoadAddress get roadAddress => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  /// Serializes this Document to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call(
      {Address address,
      @JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'address_type') String addressType,
      @JsonKey(name: 'road_address') RoadAddress roadAddress,
      String x,
      String y});

  $AddressCopyWith<$Res> get address;
  $RoadAddressCopyWith<$Res> get roadAddress;
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? addressName = null,
    Object? addressType = null,
    Object? roadAddress = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as RoadAddress,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoadAddressCopyWith<$Res> get roadAddress {
    return $RoadAddressCopyWith<$Res>(_value.roadAddress, (value) {
      return _then(_value.copyWith(roadAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocumentImplCopyWith<$Res>
    implements $DocumentCopyWith<$Res> {
  factory _$$DocumentImplCopyWith(
          _$DocumentImpl value, $Res Function(_$DocumentImpl) then) =
      __$$DocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      @JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'address_type') String addressType,
      @JsonKey(name: 'road_address') RoadAddress roadAddress,
      String x,
      String y});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $RoadAddressCopyWith<$Res> get roadAddress;
}

/// @nodoc
class __$$DocumentImplCopyWithImpl<$Res>
    extends _$DocumentCopyWithImpl<$Res, _$DocumentImpl>
    implements _$$DocumentImplCopyWith<$Res> {
  __$$DocumentImplCopyWithImpl(
      _$DocumentImpl _value, $Res Function(_$DocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? addressName = null,
    Object? addressType = null,
    Object? roadAddress = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$DocumentImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as RoadAddress,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentImpl implements _Document {
  const _$DocumentImpl(
      {required this.address,
      @JsonKey(name: 'address_name') required this.addressName,
      @JsonKey(name: 'address_type') required this.addressType,
      @JsonKey(name: 'road_address') required this.roadAddress,
      required this.x,
      required this.y});

  factory _$DocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentImplFromJson(json);

  @override
  final Address address;
  @override
  @JsonKey(name: 'address_name')
  final String addressName;
  @override
  @JsonKey(name: 'address_type')
  final String addressType;
  @override
  @JsonKey(name: 'road_address')
  final RoadAddress roadAddress;
  @override
  final String x;
  @override
  final String y;

  @override
  String toString() {
    return 'Document(address: $address, addressName: $addressName, addressType: $addressType, roadAddress: $roadAddress, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, address, addressName, addressType, roadAddress, x, y);

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      __$$DocumentImplCopyWithImpl<_$DocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentImplToJson(
      this,
    );
  }
}

abstract class _Document implements Document {
  const factory _Document(
      {required final Address address,
      @JsonKey(name: 'address_name') required final String addressName,
      @JsonKey(name: 'address_type') required final String addressType,
      @JsonKey(name: 'road_address') required final RoadAddress roadAddress,
      required final String x,
      required final String y}) = _$DocumentImpl;

  factory _Document.fromJson(Map<String, dynamic> json) =
      _$DocumentImpl.fromJson;

  @override
  Address get address;
  @override
  @JsonKey(name: 'address_name')
  String get addressName;
  @override
  @JsonKey(name: 'address_type')
  String get addressType;
  @override
  @JsonKey(name: 'road_address')
  RoadAddress get roadAddress;
  @override
  String get x;
  @override
  String get y;

  /// Create a copy of Document
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: 'address_name')
  String get addressName => throw _privateConstructorUsedError;
  @JsonKey(name: 'b_code')
  String get bCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'h_code')
  String get hCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_address_no')
  String get mainAddressNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'mountain_yn')
  String get mountainYn => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_1depth_name')
  String get region1DepthName => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_2depth_name')
  String get region2DepthName => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_3depth_h_name')
  String get region3DepthHName => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_3depth_name')
  String get region3DepthName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_address_no')
  String get subAddressNo => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'b_code') String bCode,
      @JsonKey(name: 'h_code') String hCode,
      @JsonKey(name: 'main_address_no') String mainAddressNo,
      @JsonKey(name: 'mountain_yn') String mountainYn,
      @JsonKey(name: 'region_1depth_name') String region1DepthName,
      @JsonKey(name: 'region_2depth_name') String region2DepthName,
      @JsonKey(name: 'region_3depth_h_name') String region3DepthHName,
      @JsonKey(name: 'region_3depth_name') String region3DepthName,
      @JsonKey(name: 'sub_address_no') String subAddressNo,
      String x,
      String y});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = null,
    Object? bCode = null,
    Object? hCode = null,
    Object? mainAddressNo = null,
    Object? mountainYn = null,
    Object? region1DepthName = null,
    Object? region2DepthName = null,
    Object? region3DepthHName = null,
    Object? region3DepthName = null,
    Object? subAddressNo = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      bCode: null == bCode
          ? _value.bCode
          : bCode // ignore: cast_nullable_to_non_nullable
              as String,
      hCode: null == hCode
          ? _value.hCode
          : hCode // ignore: cast_nullable_to_non_nullable
              as String,
      mainAddressNo: null == mainAddressNo
          ? _value.mainAddressNo
          : mainAddressNo // ignore: cast_nullable_to_non_nullable
              as String,
      mountainYn: null == mountainYn
          ? _value.mountainYn
          : mountainYn // ignore: cast_nullable_to_non_nullable
              as String,
      region1DepthName: null == region1DepthName
          ? _value.region1DepthName
          : region1DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region2DepthName: null == region2DepthName
          ? _value.region2DepthName
          : region2DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region3DepthHName: null == region3DepthHName
          ? _value.region3DepthHName
          : region3DepthHName // ignore: cast_nullable_to_non_nullable
              as String,
      region3DepthName: null == region3DepthName
          ? _value.region3DepthName
          : region3DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      subAddressNo: null == subAddressNo
          ? _value.subAddressNo
          : subAddressNo // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'b_code') String bCode,
      @JsonKey(name: 'h_code') String hCode,
      @JsonKey(name: 'main_address_no') String mainAddressNo,
      @JsonKey(name: 'mountain_yn') String mountainYn,
      @JsonKey(name: 'region_1depth_name') String region1DepthName,
      @JsonKey(name: 'region_2depth_name') String region2DepthName,
      @JsonKey(name: 'region_3depth_h_name') String region3DepthHName,
      @JsonKey(name: 'region_3depth_name') String region3DepthName,
      @JsonKey(name: 'sub_address_no') String subAddressNo,
      String x,
      String y});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = null,
    Object? bCode = null,
    Object? hCode = null,
    Object? mainAddressNo = null,
    Object? mountainYn = null,
    Object? region1DepthName = null,
    Object? region2DepthName = null,
    Object? region3DepthHName = null,
    Object? region3DepthName = null,
    Object? subAddressNo = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$AddressImpl(
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      bCode: null == bCode
          ? _value.bCode
          : bCode // ignore: cast_nullable_to_non_nullable
              as String,
      hCode: null == hCode
          ? _value.hCode
          : hCode // ignore: cast_nullable_to_non_nullable
              as String,
      mainAddressNo: null == mainAddressNo
          ? _value.mainAddressNo
          : mainAddressNo // ignore: cast_nullable_to_non_nullable
              as String,
      mountainYn: null == mountainYn
          ? _value.mountainYn
          : mountainYn // ignore: cast_nullable_to_non_nullable
              as String,
      region1DepthName: null == region1DepthName
          ? _value.region1DepthName
          : region1DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region2DepthName: null == region2DepthName
          ? _value.region2DepthName
          : region2DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region3DepthHName: null == region3DepthHName
          ? _value.region3DepthHName
          : region3DepthHName // ignore: cast_nullable_to_non_nullable
              as String,
      region3DepthName: null == region3DepthName
          ? _value.region3DepthName
          : region3DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      subAddressNo: null == subAddressNo
          ? _value.subAddressNo
          : subAddressNo // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: 'address_name') required this.addressName,
      @JsonKey(name: 'b_code') required this.bCode,
      @JsonKey(name: 'h_code') required this.hCode,
      @JsonKey(name: 'main_address_no') required this.mainAddressNo,
      @JsonKey(name: 'mountain_yn') required this.mountainYn,
      @JsonKey(name: 'region_1depth_name') required this.region1DepthName,
      @JsonKey(name: 'region_2depth_name') required this.region2DepthName,
      @JsonKey(name: 'region_3depth_h_name') required this.region3DepthHName,
      @JsonKey(name: 'region_3depth_name') required this.region3DepthName,
      @JsonKey(name: 'sub_address_no') required this.subAddressNo,
      required this.x,
      required this.y});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: 'address_name')
  final String addressName;
  @override
  @JsonKey(name: 'b_code')
  final String bCode;
  @override
  @JsonKey(name: 'h_code')
  final String hCode;
  @override
  @JsonKey(name: 'main_address_no')
  final String mainAddressNo;
  @override
  @JsonKey(name: 'mountain_yn')
  final String mountainYn;
  @override
  @JsonKey(name: 'region_1depth_name')
  final String region1DepthName;
  @override
  @JsonKey(name: 'region_2depth_name')
  final String region2DepthName;
  @override
  @JsonKey(name: 'region_3depth_h_name')
  final String region3DepthHName;
  @override
  @JsonKey(name: 'region_3depth_name')
  final String region3DepthName;
  @override
  @JsonKey(name: 'sub_address_no')
  final String subAddressNo;
  @override
  final String x;
  @override
  final String y;

  @override
  String toString() {
    return 'Address(addressName: $addressName, bCode: $bCode, hCode: $hCode, mainAddressNo: $mainAddressNo, mountainYn: $mountainYn, region1DepthName: $region1DepthName, region2DepthName: $region2DepthName, region3DepthHName: $region3DepthHName, region3DepthName: $region3DepthName, subAddressNo: $subAddressNo, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.bCode, bCode) || other.bCode == bCode) &&
            (identical(other.hCode, hCode) || other.hCode == hCode) &&
            (identical(other.mainAddressNo, mainAddressNo) ||
                other.mainAddressNo == mainAddressNo) &&
            (identical(other.mountainYn, mountainYn) ||
                other.mountainYn == mountainYn) &&
            (identical(other.region1DepthName, region1DepthName) ||
                other.region1DepthName == region1DepthName) &&
            (identical(other.region2DepthName, region2DepthName) ||
                other.region2DepthName == region2DepthName) &&
            (identical(other.region3DepthHName, region3DepthHName) ||
                other.region3DepthHName == region3DepthHName) &&
            (identical(other.region3DepthName, region3DepthName) ||
                other.region3DepthName == region3DepthName) &&
            (identical(other.subAddressNo, subAddressNo) ||
                other.subAddressNo == subAddressNo) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressName,
      bCode,
      hCode,
      mainAddressNo,
      mountainYn,
      region1DepthName,
      region2DepthName,
      region3DepthHName,
      region3DepthName,
      subAddressNo,
      x,
      y);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@JsonKey(name: 'address_name') required final String addressName,
      @JsonKey(name: 'b_code') required final String bCode,
      @JsonKey(name: 'h_code') required final String hCode,
      @JsonKey(name: 'main_address_no') required final String mainAddressNo,
      @JsonKey(name: 'mountain_yn') required final String mountainYn,
      @JsonKey(name: 'region_1depth_name')
      required final String region1DepthName,
      @JsonKey(name: 'region_2depth_name')
      required final String region2DepthName,
      @JsonKey(name: 'region_3depth_h_name')
      required final String region3DepthHName,
      @JsonKey(name: 'region_3depth_name')
      required final String region3DepthName,
      @JsonKey(name: 'sub_address_no') required final String subAddressNo,
      required final String x,
      required final String y}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: 'address_name')
  String get addressName;
  @override
  @JsonKey(name: 'b_code')
  String get bCode;
  @override
  @JsonKey(name: 'h_code')
  String get hCode;
  @override
  @JsonKey(name: 'main_address_no')
  String get mainAddressNo;
  @override
  @JsonKey(name: 'mountain_yn')
  String get mountainYn;
  @override
  @JsonKey(name: 'region_1depth_name')
  String get region1DepthName;
  @override
  @JsonKey(name: 'region_2depth_name')
  String get region2DepthName;
  @override
  @JsonKey(name: 'region_3depth_h_name')
  String get region3DepthHName;
  @override
  @JsonKey(name: 'region_3depth_name')
  String get region3DepthName;
  @override
  @JsonKey(name: 'sub_address_no')
  String get subAddressNo;
  @override
  String get x;
  @override
  String get y;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoadAddress _$RoadAddressFromJson(Map<String, dynamic> json) {
  return _RoadAddress.fromJson(json);
}

/// @nodoc
mixin _$RoadAddress {
  @JsonKey(name: 'address_name')
  String get addressName => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_name')
  String get buildingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_building_no')
  String get mainBuildingNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_1depth_name')
  String get region1DepthName => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_2depth_name')
  String get region2DepthName => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_3depth_name')
  String get region3DepthName => throw _privateConstructorUsedError;
  @JsonKey(name: 'road_name')
  String get roadName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_building_no')
  String get subBuildingNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'underground_yn')
  String get undergroundYn => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  @JsonKey(name: 'zone_no')
  String get zoneNo => throw _privateConstructorUsedError;

  /// Serializes this RoadAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoadAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoadAddressCopyWith<RoadAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadAddressCopyWith<$Res> {
  factory $RoadAddressCopyWith(
          RoadAddress value, $Res Function(RoadAddress) then) =
      _$RoadAddressCopyWithImpl<$Res, RoadAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'main_building_no') String mainBuildingNo,
      @JsonKey(name: 'region_1depth_name') String region1DepthName,
      @JsonKey(name: 'region_2depth_name') String region2DepthName,
      @JsonKey(name: 'region_3depth_name') String region3DepthName,
      @JsonKey(name: 'road_name') String roadName,
      @JsonKey(name: 'sub_building_no') String subBuildingNo,
      @JsonKey(name: 'underground_yn') String undergroundYn,
      String x,
      String y,
      @JsonKey(name: 'zone_no') String zoneNo});
}

/// @nodoc
class _$RoadAddressCopyWithImpl<$Res, $Val extends RoadAddress>
    implements $RoadAddressCopyWith<$Res> {
  _$RoadAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoadAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = null,
    Object? buildingName = null,
    Object? mainBuildingNo = null,
    Object? region1DepthName = null,
    Object? region2DepthName = null,
    Object? region3DepthName = null,
    Object? roadName = null,
    Object? subBuildingNo = null,
    Object? undergroundYn = null,
    Object? x = null,
    Object? y = null,
    Object? zoneNo = null,
  }) {
    return _then(_value.copyWith(
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      mainBuildingNo: null == mainBuildingNo
          ? _value.mainBuildingNo
          : mainBuildingNo // ignore: cast_nullable_to_non_nullable
              as String,
      region1DepthName: null == region1DepthName
          ? _value.region1DepthName
          : region1DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region2DepthName: null == region2DepthName
          ? _value.region2DepthName
          : region2DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region3DepthName: null == region3DepthName
          ? _value.region3DepthName
          : region3DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      roadName: null == roadName
          ? _value.roadName
          : roadName // ignore: cast_nullable_to_non_nullable
              as String,
      subBuildingNo: null == subBuildingNo
          ? _value.subBuildingNo
          : subBuildingNo // ignore: cast_nullable_to_non_nullable
              as String,
      undergroundYn: null == undergroundYn
          ? _value.undergroundYn
          : undergroundYn // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      zoneNo: null == zoneNo
          ? _value.zoneNo
          : zoneNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoadAddressImplCopyWith<$Res>
    implements $RoadAddressCopyWith<$Res> {
  factory _$$RoadAddressImplCopyWith(
          _$RoadAddressImpl value, $Res Function(_$RoadAddressImpl) then) =
      __$$RoadAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_name') String addressName,
      @JsonKey(name: 'building_name') String buildingName,
      @JsonKey(name: 'main_building_no') String mainBuildingNo,
      @JsonKey(name: 'region_1depth_name') String region1DepthName,
      @JsonKey(name: 'region_2depth_name') String region2DepthName,
      @JsonKey(name: 'region_3depth_name') String region3DepthName,
      @JsonKey(name: 'road_name') String roadName,
      @JsonKey(name: 'sub_building_no') String subBuildingNo,
      @JsonKey(name: 'underground_yn') String undergroundYn,
      String x,
      String y,
      @JsonKey(name: 'zone_no') String zoneNo});
}

/// @nodoc
class __$$RoadAddressImplCopyWithImpl<$Res>
    extends _$RoadAddressCopyWithImpl<$Res, _$RoadAddressImpl>
    implements _$$RoadAddressImplCopyWith<$Res> {
  __$$RoadAddressImplCopyWithImpl(
      _$RoadAddressImpl _value, $Res Function(_$RoadAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoadAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressName = null,
    Object? buildingName = null,
    Object? mainBuildingNo = null,
    Object? region1DepthName = null,
    Object? region2DepthName = null,
    Object? region3DepthName = null,
    Object? roadName = null,
    Object? subBuildingNo = null,
    Object? undergroundYn = null,
    Object? x = null,
    Object? y = null,
    Object? zoneNo = null,
  }) {
    return _then(_$RoadAddressImpl(
      addressName: null == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      mainBuildingNo: null == mainBuildingNo
          ? _value.mainBuildingNo
          : mainBuildingNo // ignore: cast_nullable_to_non_nullable
              as String,
      region1DepthName: null == region1DepthName
          ? _value.region1DepthName
          : region1DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region2DepthName: null == region2DepthName
          ? _value.region2DepthName
          : region2DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      region3DepthName: null == region3DepthName
          ? _value.region3DepthName
          : region3DepthName // ignore: cast_nullable_to_non_nullable
              as String,
      roadName: null == roadName
          ? _value.roadName
          : roadName // ignore: cast_nullable_to_non_nullable
              as String,
      subBuildingNo: null == subBuildingNo
          ? _value.subBuildingNo
          : subBuildingNo // ignore: cast_nullable_to_non_nullable
              as String,
      undergroundYn: null == undergroundYn
          ? _value.undergroundYn
          : undergroundYn // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      zoneNo: null == zoneNo
          ? _value.zoneNo
          : zoneNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoadAddressImpl implements _RoadAddress {
  const _$RoadAddressImpl(
      {@JsonKey(name: 'address_name') required this.addressName,
      @JsonKey(name: 'building_name') required this.buildingName,
      @JsonKey(name: 'main_building_no') required this.mainBuildingNo,
      @JsonKey(name: 'region_1depth_name') required this.region1DepthName,
      @JsonKey(name: 'region_2depth_name') required this.region2DepthName,
      @JsonKey(name: 'region_3depth_name') required this.region3DepthName,
      @JsonKey(name: 'road_name') required this.roadName,
      @JsonKey(name: 'sub_building_no') required this.subBuildingNo,
      @JsonKey(name: 'underground_yn') required this.undergroundYn,
      required this.x,
      required this.y,
      @JsonKey(name: 'zone_no') required this.zoneNo});

  factory _$RoadAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoadAddressImplFromJson(json);

  @override
  @JsonKey(name: 'address_name')
  final String addressName;
  @override
  @JsonKey(name: 'building_name')
  final String buildingName;
  @override
  @JsonKey(name: 'main_building_no')
  final String mainBuildingNo;
  @override
  @JsonKey(name: 'region_1depth_name')
  final String region1DepthName;
  @override
  @JsonKey(name: 'region_2depth_name')
  final String region2DepthName;
  @override
  @JsonKey(name: 'region_3depth_name')
  final String region3DepthName;
  @override
  @JsonKey(name: 'road_name')
  final String roadName;
  @override
  @JsonKey(name: 'sub_building_no')
  final String subBuildingNo;
  @override
  @JsonKey(name: 'underground_yn')
  final String undergroundYn;
  @override
  final String x;
  @override
  final String y;
  @override
  @JsonKey(name: 'zone_no')
  final String zoneNo;

  @override
  String toString() {
    return 'RoadAddress(addressName: $addressName, buildingName: $buildingName, mainBuildingNo: $mainBuildingNo, region1DepthName: $region1DepthName, region2DepthName: $region2DepthName, region3DepthName: $region3DepthName, roadName: $roadName, subBuildingNo: $subBuildingNo, undergroundYn: $undergroundYn, x: $x, y: $y, zoneNo: $zoneNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoadAddressImpl &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.mainBuildingNo, mainBuildingNo) ||
                other.mainBuildingNo == mainBuildingNo) &&
            (identical(other.region1DepthName, region1DepthName) ||
                other.region1DepthName == region1DepthName) &&
            (identical(other.region2DepthName, region2DepthName) ||
                other.region2DepthName == region2DepthName) &&
            (identical(other.region3DepthName, region3DepthName) ||
                other.region3DepthName == region3DepthName) &&
            (identical(other.roadName, roadName) ||
                other.roadName == roadName) &&
            (identical(other.subBuildingNo, subBuildingNo) ||
                other.subBuildingNo == subBuildingNo) &&
            (identical(other.undergroundYn, undergroundYn) ||
                other.undergroundYn == undergroundYn) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.zoneNo, zoneNo) || other.zoneNo == zoneNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressName,
      buildingName,
      mainBuildingNo,
      region1DepthName,
      region2DepthName,
      region3DepthName,
      roadName,
      subBuildingNo,
      undergroundYn,
      x,
      y,
      zoneNo);

  /// Create a copy of RoadAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoadAddressImplCopyWith<_$RoadAddressImpl> get copyWith =>
      __$$RoadAddressImplCopyWithImpl<_$RoadAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoadAddressImplToJson(
      this,
    );
  }
}

abstract class _RoadAddress implements RoadAddress {
  const factory _RoadAddress(
      {@JsonKey(name: 'address_name') required final String addressName,
      @JsonKey(name: 'building_name') required final String buildingName,
      @JsonKey(name: 'main_building_no') required final String mainBuildingNo,
      @JsonKey(name: 'region_1depth_name')
      required final String region1DepthName,
      @JsonKey(name: 'region_2depth_name')
      required final String region2DepthName,
      @JsonKey(name: 'region_3depth_name')
      required final String region3DepthName,
      @JsonKey(name: 'road_name') required final String roadName,
      @JsonKey(name: 'sub_building_no') required final String subBuildingNo,
      @JsonKey(name: 'underground_yn') required final String undergroundYn,
      required final String x,
      required final String y,
      @JsonKey(name: 'zone_no')
      required final String zoneNo}) = _$RoadAddressImpl;

  factory _RoadAddress.fromJson(Map<String, dynamic> json) =
      _$RoadAddressImpl.fromJson;

  @override
  @JsonKey(name: 'address_name')
  String get addressName;
  @override
  @JsonKey(name: 'building_name')
  String get buildingName;
  @override
  @JsonKey(name: 'main_building_no')
  String get mainBuildingNo;
  @override
  @JsonKey(name: 'region_1depth_name')
  String get region1DepthName;
  @override
  @JsonKey(name: 'region_2depth_name')
  String get region2DepthName;
  @override
  @JsonKey(name: 'region_3depth_name')
  String get region3DepthName;
  @override
  @JsonKey(name: 'road_name')
  String get roadName;
  @override
  @JsonKey(name: 'sub_building_no')
  String get subBuildingNo;
  @override
  @JsonKey(name: 'underground_yn')
  String get undergroundYn;
  @override
  String get x;
  @override
  String get y;
  @override
  @JsonKey(name: 'zone_no')
  String get zoneNo;

  /// Create a copy of RoadAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoadAddressImplCopyWith<_$RoadAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: 'is_end')
  bool get isEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageable_count')
  int get pageableCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_end') bool isEnd,
      @JsonKey(name: 'pageable_count') int pageableCount,
      @JsonKey(name: 'total_count') int totalCount});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnd = null,
    Object? pageableCount = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      pageableCount: null == pageableCount
          ? _value.pageableCount
          : pageableCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_end') bool isEnd,
      @JsonKey(name: 'pageable_count') int pageableCount,
      @JsonKey(name: 'total_count') int totalCount});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnd = null,
    Object? pageableCount = null,
    Object? totalCount = null,
  }) {
    return _then(_$MetaImpl(
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      pageableCount: null == pageableCount
          ? _value.pageableCount
          : pageableCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: 'is_end') required this.isEnd,
      @JsonKey(name: 'pageable_count') required this.pageableCount,
      @JsonKey(name: 'total_count') required this.totalCount});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: 'is_end')
  final bool isEnd;
  @override
  @JsonKey(name: 'pageable_count')
  final int pageableCount;
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  @override
  String toString() {
    return 'Meta(isEnd: $isEnd, pageableCount: $pageableCount, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.isEnd, isEnd) || other.isEnd == isEnd) &&
            (identical(other.pageableCount, pageableCount) ||
                other.pageableCount == pageableCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isEnd, pageableCount, totalCount);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
          {@JsonKey(name: 'is_end') required final bool isEnd,
          @JsonKey(name: 'pageable_count') required final int pageableCount,
          @JsonKey(name: 'total_count') required final int totalCount}) =
      _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: 'is_end')
  bool get isEnd;
  @override
  @JsonKey(name: 'pageable_count')
  int get pageableCount;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
