// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reservation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateReservationRequestImpl _$$CreateReservationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateReservationRequestImpl(
      pickupTime: DateTime.parse(json['pickupTime'] as String),
      reservationIsPlastic: json['reservationIsPlastic'] as bool,
      reservationRequest: json['reservationRequest'] as String,
    );

Map<String, dynamic> _$$CreateReservationRequestImplToJson(
        _$CreateReservationRequestImpl instance) =>
    <String, dynamic>{
      'pickupTime': instance.pickupTime.toIso8601String(),
      'reservationIsPlastic': instance.reservationIsPlastic,
      'reservationRequest': instance.reservationRequest,
    };
