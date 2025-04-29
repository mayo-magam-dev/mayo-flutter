// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_simple_store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadSimpleStoreResponseImpl _$$ReadSimpleStoreResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadSimpleStoreResponseImpl(
      id: json['id'] as String,
      storeName: json['storeName'] as String,
      openState: json['openState'] as bool,
      storeSellingType: (json['storeSellingType'] as num).toInt(),
      address: json['address'] as String,
      maxSalePercent: (json['maxSalePercent'] as num).toDouble(),
      storeImage: json['storeImage'] as String,
    );

Map<String, dynamic> _$$ReadSimpleStoreResponseImplToJson(
        _$ReadSimpleStoreResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeName': instance.storeName,
      'openState': instance.openState,
      'storeSellingType': instance.storeSellingType,
      'address': instance.address,
      'maxSalePercent': instance.maxSalePercent,
      'storeImage': instance.storeImage,
    };
