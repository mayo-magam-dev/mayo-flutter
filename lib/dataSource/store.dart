import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/network/dio.dart';

class StoreDataSource {
  final dio = AppDio.getInstance();

  Future<List<ReadStore>> getAllStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store');
    var result = response.data as List;
    return result.map((v) => ReadStore.fromJson(v)).toList();
  }

  Future<List<ReadStore>> getRecentlyStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/recently');
    var result = response.data as List;
    return result.map((v) => ReadStore.fromJson(v)).toList();
  }

  Future<List<ReadStore>> getRandomOpenStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/random-open-store');
    var result = response.data as List;
    return result.map((v) => ReadStore.fromJson(v)).toList();
  }

  Future<List<ReadStore>> getOnSaleStores() async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/on-sale');
    var result = response.data as List;
    return result.map((v) => ReadStore.fromJson(v)).toList();
  }

  Future<ReadStore> getStoreDetail(String storeId) async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/detail/$storeId');
    return ReadStore.fromJson(response.data);
  }

  Future<List<ReadStore>> getStoresByCategory(int category) async {
    final response = await dio.get('${dotenv.env['API_URL']}/store/category/$category');
    var result = response.data as List;
    return result.map((v) => ReadStore.fromJson(v)).toList();
  }
} 