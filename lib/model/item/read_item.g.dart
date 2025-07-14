// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadItemImpl _$$ReadItemImplFromJson(Map<String, dynamic> json) =>
    _$ReadItemImpl(
      itemId: json['itemId'] as String,
      itemName: json['itemName'] as String,
      itemDescription: json['itemDescription'] as String?,
      originalPrice: (json['originalPrice'] as num).toInt(),
      salePercent: (json['salePercent'] as num?)?.toDouble(),
      itemQuantity: (json['itemQuantity'] as num).toInt(),
      itemOnSale: json['itemOnSale'] as bool,
      itemImage: json['itemImage'] as String?,
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      cookingTime: (json['cookingTime'] as num?)?.toInt(),
      additionalInformation: json['additionalInformation'] as String?,
    );

Map<String, dynamic> _$$ReadItemImplToJson(_$ReadItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemDescription': instance.itemDescription,
      'originalPrice': instance.originalPrice,
      'salePercent': instance.salePercent,
      'itemQuantity': instance.itemQuantity,
      'itemOnSale': instance.itemOnSale,
      'itemImage': instance.itemImage,
      'salePrice': instance.salePrice,
      'cookingTime': instance.cookingTime,
      'additionalInformation': instance.additionalInformation,
    };
