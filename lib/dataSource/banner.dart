import 'package:mayo_flutter/model/banner.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/network/dio.dart';

class BannerDataSource {
  final dio = AppDio.getInstance();

  getBannerList(String boardId) async {
    var response = await dio.put(
      '${dotenv.env['API_URL']}/banners',
    );
    var result = response.data as List;
    return result.map((v) => Banner.fromJson(v)).toList();
  }
}
