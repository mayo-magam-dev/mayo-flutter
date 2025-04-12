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
      createdAt: const TimestampConverter()
          .fromJson(json['createdAt'] as Map<String, dynamic>),
      pickupTime: const TimestampConverter()
          .fromJson(json['pickupTime'] as Map<String, dynamic>),
      totalPrice: (json['totalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReadReservationResponseImplToJson(
        _$ReadReservationResponseImpl instance) =>
    <String, dynamic>{
      'reservationId': instance.reservationId,
      'storeName': instance.storeName,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'pickupTime': const TimestampConverter().toJson(instance.pickupTime),
      'totalPrice': instance.totalPrice,
    };
