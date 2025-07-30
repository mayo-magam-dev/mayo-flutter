import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/providers/home_provider.dart';
import 'package:mayo_flutter/providers/login_provider.dart';
import 'package:mayo_flutter/providers/init_provider.dart';
import 'package:mayo_flutter/firebase_options.dart';
import 'package:mayo_flutter/router/router.dart';
import 'package:mayo_flutter/designSystem/themedata.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // dotenv를 가장 먼저 로드
  await dotenv.load(fileName: './.env');

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final apiKey = dotenv.env['MAP_API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    debugPrint("❗ MAP_API_KEY가 .env에 존재하지 않거나 비어 있음");
  } else {
    AuthRepository.initialize(appKey: apiKey);
  }

  // 성능 최적화 설정
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase Auth 상태 초기화 대기
  await FirebaseAuth.instance.authStateChanges().first;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: MaterialApp.router(
              title: '마요',
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en', ''),
                Locale('ko', ''),
              ],
              theme: customThemeData,
              routerConfig: router,
            ),
          );
        },
      ),
    );
  }
}
