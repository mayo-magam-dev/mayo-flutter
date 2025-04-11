import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';

part 'create_reservation_request.freezed.dart';
part 'create_reservation_request.g.dart';

@freezed
class CreateReservationRequest with _$CreateReservationRequest {
  factory CreateReservationRequest({
    required DateTime pickupTime,
    required bool reservationIsPlastic,
    required String reservationRequest,
  }) = _CreateReservationRequest;

  factory CreateReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReservationRequestFromJson(json);
} 