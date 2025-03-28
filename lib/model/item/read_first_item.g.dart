// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_first_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadFirstItemImpl _$$ReadFirstItemImplFromJson(Map<String, dynamic> json) =>
    _$ReadFirstItemImpl(
      itemName: json['itemName'] as String,
      itemQuantity: (json['itemQuantity'] as num).toInt(),
    );

Map<String, dynamic> _$$ReadFirstItemImplToJson(_$ReadFirstItemImpl instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'itemQuantity': instance.itemQuantity,
    };
