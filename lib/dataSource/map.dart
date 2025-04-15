import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/store/address_response.dart';

class MapDataSource {
  final dio = Dio();

  Future<AddressResponse> getGeocode(String address) async {
    final response = await dio.get(
        'https://dapi.kakao.com/v2/local/search/address.json?query=$address',
        options: Options(
          headers: {
            'Authorization': 'KakaoAK ${dotenv.env['KAKAO_REST_API_KEY']}',
          },
        ));
    return AddressResponse.fromJson(response.data);
  }
}
