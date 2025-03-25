// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_reservation_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadReservationDetailResponseImpl
    _$$ReadReservationDetailResponseImplFromJson(Map<String, dynamic> json) =>
        _$ReadReservationDetailResponseImpl(
          storeName: json['storeName'] as String,
          storeNumber: json['storeNumber'] as String,
          createdAt: const TimestampConverter()
              .fromJson(json['createdAt'] as Map<String, dynamic>),
          pickupTime: const TimestampConverter()
              .fromJson(json['pickupTime'] as Map<String, dynamic>),
          reservationId: json['reservationId'] as String,
          cartList: (json['cartList'] as List<dynamic>)
              .map((e) => ReadCartResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
          totalPrice: (json['totalPrice'] as num).toDouble(),
        );

Map<String, dynamic> _$$ReadReservationDetailResponseImplToJson(
        _$ReadReservationDetailResponseImpl instance) =>
    <String, dynamic>{
      'storeName': instance.storeName,
      'storeNumber': instance.storeNumber,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'pickupTime': const TimestampConverter().toJson(instance.pickupTime),
      'reservationId': instance.reservationId,
      'cartList': instance.cartList,
      'totalPrice': instance.totalPrice,
    };
