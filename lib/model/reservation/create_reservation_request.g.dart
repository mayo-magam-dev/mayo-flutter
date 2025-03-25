// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reservation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateReservationRequestImpl _$$CreateReservationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateReservationRequestImpl(
      pickupTime: const TimestampConverter()
          .fromJson(json['pickupTime'] as Map<String, dynamic>),
      reservationIsPlastic: json['reservationIsPlastic'] as bool,
      reservationRequest: json['reservationRequest'] as String,
    );

Map<String, dynamic> _$$CreateReservationRequestImplToJson(
        _$CreateReservationRequestImpl instance) =>
    <String, dynamic>{
      'pickupTime': const TimestampConverter().toJson(instance.pickupTime),
      'reservationIsPlastic': instance.reservationIsPlastic,
      'reservationRequest': instance.reservationRequest,
    };
