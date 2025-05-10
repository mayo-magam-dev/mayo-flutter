import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';
import '../cart/read_cart_response.dart';

part 'read_reservation_detail_response.freezed.dart';
part 'read_reservation_detail_response.g.dart';

@freezed
class ReadReservationDetailResponse with _$ReadReservationDetailResponse {
  factory ReadReservationDetailResponse({
    required String storeName,
    required String storeNumber,
    @CreatedAtTimestampConverter() required DateTime createdAt,
    @PickUpTimestampConverter() required DateTime pickupTime,
    String? reservationId,
    required List<ReadCartResponse> cartList,
    required double totalPrice,
  }) = _ReadReservationDetailResponse;

  factory ReadReservationDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadReservationDetailResponseFromJson(json);
}
