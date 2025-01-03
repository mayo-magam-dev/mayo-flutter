import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/network/dio.dart';

class StoreNoticeDataSource {
  final dio = AppDio.getInstance();

  putNoticeStore(String storeId, String accessToken) async {
    var response = await dio.put('${dotenv.env['API_URL']}/user/notice-store',
        data: {
          'storeId': storeId,
        },
        options: Options(headers: {
          'Authorization': 'Bearer $accessToken',
        }));
    return response.data;
  }

  getNoticeStore(String accessToken) async {
    var response = await dio.get('${dotenv.env['API_URL']}/user/notice-stores',
        options: Options(headers: {
          'Authorization': 'Bearer $accessToken',
        }));
    return response.data;
  }
}
