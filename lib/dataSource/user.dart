import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/network/dio.dart';

class UserDataSource {
  final dio = AppDio.getInstance();

  putNoticeStore(String storeId) async {
    await dio.put(
      '${dotenv.env['API_URL']}/user/notice-store',
      data: {'storeId': storeId},
    );
  }

  putUserNickname(String nickname) async {
    await dio.put(
      '${dotenv.env['API_URL']}/user/nickname',
      data: {'nickname': nickname},
    );
  }
}
