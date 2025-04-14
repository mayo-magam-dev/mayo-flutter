// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_reservation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadReservationResponseImpl _$$ReadReservationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadReservationResponseImpl(
      reservationId: json['reservationId'] as String,
      storeName: json['storeName'] as String,
      storeImage: json['storeImage'] as String,
      firstItem:
          ReadFirstItem.fromJson(json['firstItem'] as Map<String, dynamic>),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      createdAt: const CreatedAtTimestampConverter()
          .fromJson(json['createdAt'] as List),
    );

Map<String, dynamic> _$$ReadReservationResponseImplToJson(
        _$ReadReservationResponseImpl instance) =>
    <String, dynamic>{
      'reservationId': instance.reservationId,
      'storeName': instance.storeName,
      'storeImage': instance.storeImage,
      'firstItem': instance.firstItem,
      'totalPrice': instance.totalPrice,
      'createdAt':
          const CreatedAtTimestampConverter().toJson(instance.createdAt),
    };
