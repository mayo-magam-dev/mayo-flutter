// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressResponseImpl _$$AddressResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressResponseImpl(
      documents: (json['documents'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressResponseImplToJson(
        _$AddressResponseImpl instance) =>
    <String, dynamic>{
      'documents': instance.documents,
      'meta': instance.meta,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      addressName: json['address_name'] as String,
      addressType: json['address_type'] as String,
      roadAddress:
          RoadAddress.fromJson(json['road_address'] as Map<String, dynamic>),
      x: json['x'] as String,
      y: json['y'] as String,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'address_name': instance.addressName,
      'address_type': instance.addressType,
      'road_address': instance.roadAddress,
      'x': instance.x,
      'y': instance.y,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      addressName: json['address_name'] as String,
      bCode: json['b_code'] as String,
      hCode: json['h_code'] as String,
      mainAddressNo: json['main_address_no'] as String,
      mountainYn: json['mountain_yn'] as String,
      region1DepthName: json['region_1depth_name'] as String,
      region2DepthName: json['region_2depth_name'] as String,
      region3DepthHName: json['region_3depth_h_name'] as String,
      region3DepthName: json['region_3depth_name'] as String,
      subAddressNo: json['sub_address_no'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'address_name': instance.addressName,
      'b_code': instance.bCode,
      'h_code': instance.hCode,
      'main_address_no': instance.mainAddressNo,
      'mountain_yn': instance.mountainYn,
      'region_1depth_name': instance.region1DepthName,
      'region_2depth_name': instance.region2DepthName,
      'region_3depth_h_name': instance.region3DepthHName,
      'region_3depth_name': instance.region3DepthName,
      'sub_address_no': instance.subAddressNo,
      'x': instance.x,
      'y': instance.y,
    };

_$RoadAddressImpl _$$RoadAddressImplFromJson(Map<String, dynamic> json) =>
    _$RoadAddressImpl(
      addressName: json['address_name'] as String,
      buildingName: json['building_name'] as String,
      mainBuildingNo: json['main_building_no'] as String,
      region1DepthName: json['region_1depth_name'] as String,
      region2DepthName: json['region_2depth_name'] as String,
      region3DepthName: json['region_3depth_name'] as String,
      roadName: json['road_name'] as String,
      subBuildingNo: json['sub_building_no'] as String,
      undergroundYn: json['underground_yn'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
      zoneNo: json['zone_no'] as String,
    );

Map<String, dynamic> _$$RoadAddressImplToJson(_$RoadAddressImpl instance) =>
    <String, dynamic>{
      'address_name': instance.addressName,
      'building_name': instance.buildingName,
      'main_building_no': instance.mainBuildingNo,
      'region_1depth_name': instance.region1DepthName,
      'region_2depth_name': instance.region2DepthName,
      'region_3depth_name': instance.region3DepthName,
      'road_name': instance.roadName,
      'sub_building_no': instance.subBuildingNo,
      'underground_yn': instance.undergroundYn,
      'x': instance.x,
      'y': instance.y,
      'zone_no': instance.zoneNo,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      isEnd: json['is_end'] as bool,
      pageableCount: (json['pageable_count'] as num).toInt(),
      totalCount: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'is_end': instance.isEnd,
      'pageable_count': instance.pageableCount,
      'total_count': instance.totalCount,
    };
