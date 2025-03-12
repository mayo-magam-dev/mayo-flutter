// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadStoreImpl _$$ReadStoreImplFromJson(Map<String, dynamic> json) =>
    _$ReadStoreImpl(
      id: json['id'] as String,
      storeName: json['storeName'] as String,
      openState: json['openState'] as bool,
      address: json['address'] as String,
      storeImage: json['storeImage'] as String,
      openTime: json['openTime'] as String,
      closeTime: json['closeTime'] as String,
      saleStart: json['saleStart'] as String,
      saleEnd: json['saleEnd'] as String,
      storeDescription: json['storeDescription'] as String?,
      storeNumber: json['storeNumber'] as String,
      storeMapUrl: json['storeMapUrl'] as String?,
      originInfo: json['originInfo'] as String?,
      additionalComment: json['additionalComment'] as String,
      storeCategory: (json['storeCategory'] as num).toInt(),
      storeSellingType: (json['storeSellingType'] as num).toInt(),
    );

Map<String, dynamic> _$$ReadStoreImplToJson(_$ReadStoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeName': instance.storeName,
      'openState': instance.openState,
      'address': instance.address,
      'storeImage': instance.storeImage,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'saleStart': instance.saleStart,
      'saleEnd': instance.saleEnd,
      'storeDescription': instance.storeDescription,
      'storeNumber': instance.storeNumber,
      'storeMapUrl': instance.storeMapUrl,
      'originInfo': instance.originInfo,
      'additionalComment': instance.additionalComment,
      'storeCategory': instance.storeCategory,
      'storeSellingType': instance.storeSellingType,
    };
