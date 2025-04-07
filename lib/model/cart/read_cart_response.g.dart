// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadCartResponseImpl _$$ReadCartResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadCartResponseImpl(
      cartId: json['cartId'] as String,
      cartItemCount: (json['cartItemCount'] as num).toInt(),
      itemQuantity: (json['itemQuantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toDouble(),
      itemName: json['itemName'] as String,
      itemImage: json['itemImage'] as String?,
      storeId: json['storeId'] as String,
    );

Map<String, dynamic> _$$ReadCartResponseImplToJson(
        _$ReadCartResponseImpl instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'cartItemCount': instance.cartItemCount,
      'itemQuantity': instance.itemQuantity,
      'subtotal': instance.subtotal,
      'itemName': instance.itemName,
      'itemImage': instance.itemImage,
      'storeId': instance.storeId,
    };
