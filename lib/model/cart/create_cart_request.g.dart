// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCartRequestImpl _$$CreateCartRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCartRequestImpl(
      itemId: json['itemId'] as String,
      itemCount: (json['itemCount'] as num).toInt(),
      storeId: json['storeId'] as String,
    );

Map<String, dynamic> _$$CreateCartRequestImplToJson(
        _$CreateCartRequestImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemCount': instance.itemCount,
      'storeId': instance.storeId,
    };
