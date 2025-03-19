// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_recently_store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadRecentlyStoreResponseImpl _$$ReadRecentlyStoreResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadRecentlyStoreResponseImpl(
      id: json['id'] as String,
      storeName: json['storeName'] as String,
      openState: json['openState'] as bool,
      storeSellingType: (json['storeSellingType'] as num).toInt(),
      address: json['address'] as String,
      mainImage: json['mainImage'] as String?,
    );

Map<String, dynamic> _$$ReadRecentlyStoreResponseImplToJson(
        _$ReadRecentlyStoreResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeName': instance.storeName,
      'openState': instance.openState,
      'storeSellingType': instance.storeSellingType,
      'address': instance.address,
      'mainImage': instance.mainImage,
    };
