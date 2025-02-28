import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/firebase_options.dart';
import 'package:mayo_flutter/view/home/home_page.dart';
import 'package:mayo_flutter/view/login/login_page.dart';
import 'package:mayo_flutter/view/signUp/step1/sign_up_step1_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(fileName: './.env');
  AuthRepository.initialize(appKey: dotenv.env['MAP_API_KEY']!);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final UserDataSource userDataSource = UserDataSource();

    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: '마요',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // home: StreamBuilder<User?>(
            //   stream: FirebaseAuth.instance.authStateChanges(),
            //   builder: (ctx, snapshot) {
            //     if (snapshot.hasData) {
            //       return FutureBuilder(
            //         future: userDataSource.getUser(),
            //         builder: (ctx, userSnapshot) {
            //           if (userSnapshot.hasError) {
            //             return SignUpStep1Page();
            //           }
            //           if (userSnapshot.connectionState ==
            //               ConnectionState.waiting) {
            //             return const Center(child: CircularProgressIndicator());
            //           }
            //           return const HomePage();
            //         },
            //       );
            //     } else {
            //       return const LoginPage();
            //     }
            //   },
            // ),
            home: const HomePage(),
          );
        });
  }
}
