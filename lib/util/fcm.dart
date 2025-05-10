import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/model/user/create_fcm_token.dart';



class FcmUtils {
  static Future<void> registerFcmToken() async {
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken != null) {
      if (Platform.isIOS) {
        await FirebaseMessaging.instance.getAPNSToken();
      }
      await UserDataSource().createFcmToken(
        createFcmToken: CreateFcmToken(
          deviceType: Platform.isAndroid ? "Android" : "iOS",
          fcmToken: fcmToken,
        ),
      );
    }
  }
} 