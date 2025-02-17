import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/board.dart';
import 'package:mayo_flutter/network/dio.dart';

class BoardDataSource {
  final dio = AppDio.getInstance();

  Future<Board> getPostByBoardId(String boardId) async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/$boardId',
    );
    return Board.fromJson(response.data);
  }

  Future<List<Board>> getTerms() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/terms',
    );
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getNotice() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/notice',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqUpdateInfo() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-update-info',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqStorePickUp() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-store-pickup',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqPayment() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-payment',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqOrderNotification() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-order-notification',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqOrderHistory() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-order-history',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqMainFeature() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-main-feature',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getHowToUse() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-how-to-use',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqEvent() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-event',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqDeleteAccount() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-delete-account',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqCoupon() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-coupon',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getEvent() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/event',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }
}
