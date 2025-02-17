import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/board.dart';
import 'package:mayo_flutter/network/dio.dart';

class BoardDataSource {
  final dio = AppDio.getInstance();

  getPostByBoardId(String boardId) async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/$boardId',
    );
    return Board.fromJson(response.data);
  }

  getTerms() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/terms',
    );
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getNotice() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/notice',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqUpdateInfo() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-update-info',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqStorePickUp() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-store-pickup',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqPayment() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-payment',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqOrderNotification() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-order-notification',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqOrderHistory() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-order-history',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqMainFeature() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-main-feature',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getHowToUse() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-how-to-use',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqEvent() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-event',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqDeleteAccount() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-delete-account',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getFaqCoupon() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/faq-coupon',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  getEvent() async {
    var response = await dio.get(
      '${dotenv.env['API_URL']}/board/event',
    );

    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }
}
