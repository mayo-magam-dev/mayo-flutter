import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/reservation/create_reservation_request.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_detail_response.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_response.dart';
import 'package:mayo_flutter/network/dio.dart';

class ReservationDataSource {
  final dio = AppDio.getInstance();

  Future<List<ReadReservationResponse>> getReservations() async {
    final response = await dio.get('${dotenv.env['API_URL']}/reservation');
    var result = response.data as List;
    return result.map((v) => ReadReservationResponse.fromJson(v)).toList();
  }

  Future<ReadReservationDetailResponse> getReservationDetail(
      String reservationId) async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/reservation/$reservationId');
    return ReadReservationDetailResponse.fromJson(response.data);
  }

  Future<void> createReservation({
    required CreateReservationRequest request,
  }) async {
    await dio.post(
      '${dotenv.env['API_URL']}/reservation',
      data: request.toJson(),
    );
  }
}
