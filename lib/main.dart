import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/firebase_options.dart';
import 'package:mayo_flutter/router/router.dart';
import 'package:mayo_flutter/designSystem/themedata.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ Firebase 초기화
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // ✅ .env 로딩
  try {
    await dotenv.load(fileName: './.env');
  } catch (e) {
    debugPrint("❗ .env 파일 로드 실패: $e");
  }

  // ✅ API 키 가져오기
  final apiKey = dotenv.env['MAP_API_KEY'];
  if (apiKey == null || apiKey.isEmpty) {
    debugPrint("❗ MAP_API_KEY가 .env에 존재하지 않거나 비어 있음");
  } else {
    AuthRepository.initialize(appKey: apiKey);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc()..add(CheckLoginStatusEvent()),
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            title: '마요',
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''),
              Locale('ko', ''),
            ],
            theme: customThemeData,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
