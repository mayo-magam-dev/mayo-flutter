import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/model/store/read_recently_store_response.dart';
import 'package:mayo_flutter/model/store/read_simple_store_response.dart';
import 'package:mayo_flutter/network/dio.dart';

class StoreDataSource {
  final dio = AppDio.getInstance();

  Future<List<ReadSimpleStoreResponse>> getAllStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store');
    var result = response.data as List;
    return result.map((v) => ReadSimpleStoreResponse.fromJson(v)).toList();
  }

  Future<List<ReadRecentlyStoreResponse>> getRecentlyStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/recently');
    var result = response.data as List;
    return result.map((v) => ReadRecentlyStoreResponse.fromJson(v)).toList();
  }

  Future<List<ReadSimpleStoreResponse>> getRandomOpenStores() async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/store/random-open-store');
    var result = response.data as List;
    return result.map((v) => ReadSimpleStoreResponse.fromJson(v)).toList();
  }

  Future<List<ReadSimpleStoreResponse>> getPartnerStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/partner');
    var result = response.data as List;
    return result.map((v) => ReadSimpleStoreResponse.fromJson(v)).toList();
  }

  Future<List<ReadSimpleStoreResponse>> getOnSaleStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/on-sale');
    var result = response.data as List;
    return result.map((v) => ReadSimpleStoreResponse.fromJson(v)).toList();
  }

  Future<List<ReadSimpleStoreResponse>> getMealStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/meal');
    var result = response.data as List;
    return result.map((v) => ReadSimpleStoreResponse.fromJson(v)).toList();
  }

  Future<ReadStore> getStoreDetail(String storeId) async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/store/detail/$storeId');
    return ReadStore.fromJson(response.data);
  }

  Future<List<ReadSimpleStoreResponse>> getDessertStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/dessert');
    var result = response.data as List;
    return result.map((v) => ReadSimpleStoreResponse.fromJson(v)).toList();
  }

  Future<List<ReadSimpleStoreResponse>> getStoresByCategory(
      int category) async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/store/category/$category');
    var result = response.data as List;
    return result.map((v) => ReadSimpleStoreResponse.fromJson(v)).toList();
  }
}
