import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/bloc/home/home_bloc.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/firebase_options.dart';
import 'package:mayo_flutter/router/router.dart';
import 'package:mayo_flutter/designSystem/themedata.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  
  try {
    await dotenv.load(fileName: './.env');
  } catch (e) {
    debugPrint("❗ .env 파일 로드 실패: $e");
  }

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HomeBloc()..add(LoadHomeData()),
        ),
        BlocProvider(
          create: (_) => LoginBloc()..add(CheckLoginStatusEvent()),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (_, __) => MaterialApp.router(
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
      ),
    );
  }
}
