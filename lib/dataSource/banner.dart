import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/banner/banner.dart';
import 'package:mayo_flutter/network/dio.dart';

class BannerDataSource {
  final dio = AppDio.getInstance();

  Future<List<Banner>> getBanners() async {
    final response = await dio.get('${dotenv.env['API_URL']}/banners');
    var result = response.data as List;
    return result.map((v) => Banner.fromJson(v)).toList();
  }
}
