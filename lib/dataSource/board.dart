import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/network/dio.dart';

class BoardDataSource {
  final dio = AppDio.getInstance();

  Future<Board> getBoard(String boardId) async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/$boardId');
    return Board.fromJson(response.data);
  }

  Future<List<Board>> getTermsBoard() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/terms');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getNoticeBoard() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/notice');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqUpdateInfo() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-update-info');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqStorePickup() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-store-pickup');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqPayment() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-payment');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqOrderNotification() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-order-notification');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqOrderHistory() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-order-history');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqMainFeature() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-main-feature');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqHowToUse() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-how-to-use');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqEvent() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-event');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqEtc() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-etc');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqDeleteAccount() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-delete-account');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getFaqCoupon() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/faq-coupon');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }

  Future<List<Board>> getEventBoard() async {
    final response = await dio.get('${dotenv.env['API_URL']}/board/event');
    var result = response.data as List;
    return result.map((v) => Board.fromJson(v)).toList();
  }
}
