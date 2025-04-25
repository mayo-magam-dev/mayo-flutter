import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/model/item/read_first_item.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';

part 'read_reservation_response.freezed.dart';
part 'read_reservation_response.g.dart';

@freezed
class ReadReservationResponse with _$ReadReservationResponse {
  factory ReadReservationResponse({
    required String reservationId,
    required String storeName,
    required String storeImage,
    required ReadFirstItem firstItem,
    required double totalPrice,
    @CreatedAtTimestampConverter() required DateTime createdAt,
    required int reservationState,
  }) = _ReadReservationResponse;

  factory ReadReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadReservationResponseFromJson(json);
} 