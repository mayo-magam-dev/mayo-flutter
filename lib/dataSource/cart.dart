import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/cart/create_cart_request.dart';
import 'package:mayo_flutter/model/cart/delete_cart_request.dart';
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/model/cart/update_quantity_request.dart';
import 'package:mayo_flutter/network/dio.dart';

class CartDataSource {
  final dio = AppDio.getInstance();

  Future<List<ReadCartResponse>> getCarts() async {
    final response = await dio.get('${dotenv.env['API_URL']}/carts');
    var result = response.data as List;
    return result.map((v) => ReadCartResponse.fromJson(v)).toList();
  }

  Future<void> putQuantity(String cartId, int itemQuantity) async {
    final request =
        UpdateQuantityRequest(cartId: cartId, itemQuantity: itemQuantity);
    await dio.put(
      '${dotenv.env['API_URL']}/carts',
      data: request.toJson(),
    );
  }

  Future<void> createCart({
    required CreateCartRequest request,
  }) async {
    await dio.post(
      '${dotenv.env['API_URL']}/carts',
      data: request.toJson(),
    );
  }

  Future<void> deleteCart(String cartId) async {
    final request = DeleteCartRequest(cartId: cartId);
    await dio.delete(
      '${dotenv.env['API_URL']}/carts/$cartId',
      data: request.toJson(),
    );
  }
}
