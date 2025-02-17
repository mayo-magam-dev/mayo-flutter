import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/create_user.dart';
import 'package:mayo_flutter/model/read_store.dart';
import 'package:mayo_flutter/model/read_user.dart';
import 'package:mayo_flutter/network/dio.dart';

class UserDataSource {
  final dio = AppDio.getInstance();

  Future<void> putNoticeStore(String storeId) async {
    await dio.put(
      '${dotenv.env['API_URL']}/user/notice-store',
      data: {'storeId': storeId},
    );
  }

  Future<void> putUserNickname(String nickname) async {
    await dio.put(
      '${dotenv.env['API_URL']}/user/nickname',
      data: {'nickName': nickname},
    );
  }

  Future<void> putFavoriteStore(String storeId) async {
    await dio.put(
      '${dotenv.env['API_URL']}/user/favorite-store',
      data: {'storeId': storeId},
    );
  }

  Future<void> putUserEmail(String email) async {
    await dio.put(
      '${dotenv.env['API_URL']}/user/email',
      data: {'email': email},
    );
  }

  Future<void> putAgreeMarketing(bool agreeMarketing) async {
    await dio.put(
      '${dotenv.env['API_URL']}/user/agreeMarketing',
      data: {'agreeMarketing': agreeMarketing},
    );
  }

  Future<ReadUser> getUser() async {
    final response = await dio.get('${dotenv.env['API_URL']}/user');
    return ReadUser.fromJson(response.data);
  }

  Future<void> createUser({
    required CreateUser createUser,
  }) async {
    await dio.post(
      '${dotenv.env['API_URL']}/user',
      data: createUser,
    );
  }

  Future<void> deleteUser() async {
    await dio.delete('${dotenv.env['API_URL']}/user');
  }

  Future<List<ReadStore>> getNoticeStores() async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/user/notice-stores');

    var result = response.data as List;
    return result.map((v) => ReadStore.fromJson(v)).toList();
  }

  Future<List<ReadStore>> getFavoriteStores() async {
    final response =
        await dio.get('${dotenv.env['API_URL']}/user/favorite-stores');

    var result = response.data as List;
    return result.map((v) => ReadStore.fromJson(v)).toList();
  }
}
