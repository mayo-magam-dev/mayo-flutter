import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/network/dio.dart';

class ItemDataSource {
  final dio = AppDio.getInstance();

  Future<List<ReadItem>> getItemsByStoreId(String storeId) async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/item/store/$storeId');
    var result = response.data as List;
    return result.map((v) => ReadItem.fromJson(v)).toList();
  }

  Future<ReadItem> getItemById(String itemId) async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/item/item/$itemId');
    return ReadItem.fromJson(response.data);
  }
}
