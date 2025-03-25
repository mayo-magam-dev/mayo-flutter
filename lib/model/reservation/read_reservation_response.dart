import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';

part 'read_reservation_response.freezed.dart';
part 'read_reservation_response.g.dart';

@freezed
class ReadReservationResponse with _$ReadReservationResponse {
  factory ReadReservationResponse({
    required String reservationId,
    required String storeName,
    required String storeNumber,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime pickupTime,
    required double totalPrice,
  }) = _ReadReservationResponse;

  factory ReadReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadReservationResponseFromJson(json);
}
