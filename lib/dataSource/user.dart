import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/model/user/create_fcm_token.dart';
import 'package:mayo_flutter/model/user/create_user.dart';
import 'package:mayo_flutter/model/user/read_user.dart';
import 'package:mayo_flutter/model/user/update_agree_marketing_request.dart';
import 'package:mayo_flutter/model/user/update_email_request.dart';
import 'package:mayo_flutter/model/user/update_favorite_store_request.dart';
import 'package:mayo_flutter/model/user/update_nickname_request.dart';
import 'package:mayo_flutter/model/user/update_notice_store_request.dart';
import 'package:mayo_flutter/model/user/update_user_image_request.dart';
import 'package:mayo_flutter/network/dio.dart';

class UserDataSource {
  final dio = AppDio.getInstance();

  Future<void> putUserImage(String file) async {
    final request = UpdateUserImageRequest(file: file);
    await dio.put(
      '${dotenv.env['API_URL']}/user/userImage',
      data: request.toJson(),
    );
  }

  Future<void> putNoticeStore(String storeId) async {
    final request = UpdateNoticeStoreRequest(storeId: storeId);
    await dio.put(
      '${dotenv.env['API_URL']}/user/notice-store',
      data: request.toJson(),
    );
  }

  Future<void> putUserNickname(String nickname) async {
    final request = UpdateNickNameRequest(nickName: nickname);
    await dio.put(
      '${dotenv.env['API_URL']}/user/nickname',
      data: request.toJson(),
    );
  }

  Future<void> putFavoriteStore(String storeId) async {
    final request = UpdateFavoriteStoreRequest(storeId: storeId);
    await dio.put(
      '${dotenv.env['API_URL']}/user/favorite-store',
      data: request.toJson(),
    );
  }

  Future<void> putUserEmail(String email) async {
    final request = UpdateEmailRequest(email: email);
    await dio.put(
      '${dotenv.env['API_URL']}/user/email',
      data: request.toJson(),
    );
  }

  Future<void> putAgreeMarketing(bool agreeMarketing) async {
    final request = UpdateAgreeMarketingRequest(agreeMarketing: agreeMarketing);
    await dio.put(
      '${dotenv.env['API_URL']}/user/agreeMarketing',
      data: request.toJson(),
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
      data: createUser.toJson(),
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

  Future<void> createFcmToken({required CreateFcmToken createFcmToken}) async {
    await dio.post('${dotenv.env['API_URL']}/user/fcm',
        data: createFcmToken.toJson());
  }
}
