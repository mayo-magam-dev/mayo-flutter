// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_first_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadFirstItemResponseImpl _$$ReadFirstItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadFirstItemResponseImpl(
      itemName: json['itemName'] as String,
      itemQuantity: (json['itemQuantity'] as num).toInt(),
    );

Map<String, dynamic> _$$ReadFirstItemResponseImplToJson(
        _$ReadFirstItemResponseImpl instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'itemQuantity': instance.itemQuantity,
    };
