import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_response.freezed.dart';
part 'address_response.g.dart';

@freezed
class AddressResponse with _$AddressResponse {
  const factory AddressResponse({
    required List<Document> documents,
    required Meta meta,
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);
}

@freezed
class Document with _$Document {
  const factory Document({
    required Address address,
    @JsonKey(name: 'address_name') required String addressName,
    @JsonKey(name: 'address_type') required String addressType,
    @JsonKey(name: 'road_address') required RoadAddress roadAddress,
    required String x,
    required String y,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: 'address_name') required String addressName,
    @JsonKey(name: 'b_code') required String bCode,
    @JsonKey(name: 'h_code') required String hCode,
    @JsonKey(name: 'main_address_no') required String mainAddressNo,
    @JsonKey(name: 'mountain_yn') required String mountainYn,
    @JsonKey(name: 'region_1depth_name') required String region1DepthName,
    @JsonKey(name: 'region_2depth_name') required String region2DepthName,
    @JsonKey(name: 'region_3depth_h_name') required String region3DepthHName,
    @JsonKey(name: 'region_3depth_name') required String region3DepthName,
    @JsonKey(name: 'sub_address_no') required String subAddressNo,
    required String x,
    required String y,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class RoadAddress with _$RoadAddress {
  const factory RoadAddress({
    @JsonKey(name: 'address_name') required String addressName,
    @JsonKey(name: 'building_name') required String buildingName,
    @JsonKey(name: 'main_building_no') required String mainBuildingNo,
    @JsonKey(name: 'region_1depth_name') required String region1DepthName,
    @JsonKey(name: 'region_2depth_name') required String region2DepthName,
    @JsonKey(name: 'region_3depth_name') required String region3DepthName,
    @JsonKey(name: 'road_name') required String roadName,
    @JsonKey(name: 'sub_building_no') required String subBuildingNo,
    @JsonKey(name: 'underground_yn') required String undergroundYn,
    required String x,
    required String y,
    @JsonKey(name: 'zone_no') required String zoneNo,
  }) = _RoadAddress;

  factory RoadAddress.fromJson(Map<String, dynamic> json) =>
      _$RoadAddressFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'is_end') required bool isEnd,
    @JsonKey(name: 'pageable_count') required int pageableCount,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
