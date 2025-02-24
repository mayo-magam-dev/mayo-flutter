import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/cart/create_cart_request.dart';
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/network/dio.dart';

class CartDataSource {
  final dio = AppDio.getInstance();

  Future<List<ReadCartResponse>> getCarts() async {
    final response = await dio.get('${dotenv.env['API_URL']}/carts');
    var result = response.data as List;
    return result.map((v) => ReadCartResponse.fromJson(v)).toList();
  }

  Future<void> createCart({
    required CreateCartRequest request,
  }) async {
    await dio.post(
      '${dotenv.env['API_URL']}/carts',
      data: request.toJson(),
    );
  }
} 