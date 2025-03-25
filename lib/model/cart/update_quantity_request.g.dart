// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_quantity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateQuantityRequestImpl _$$UpdateQuantityRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuantityRequestImpl(
      cartId: json['cartId'] as String,
      itemQuantity: (json['itemQuantity'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateQuantityRequestImplToJson(
        _$UpdateQuantityRequestImpl instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'itemQuantity': instance.itemQuantity,
    };
