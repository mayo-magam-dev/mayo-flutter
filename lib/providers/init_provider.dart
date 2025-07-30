import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mayo_flutter/providers/home_provider.dart';
import 'package:mayo_flutter/providers/login_provider.dart';

part 'init_provider.g.dart';

@riverpod
Future<void> initializeApp(InitializeAppRef ref) async {
  // 로그인 상태 확인
  await ref.read(loginNotifierProvider.notifier).checkLoginStatus();

  // 홈 데이터 로드
  await ref.read(homeNotifierProvider.notifier).loadHomeData();
}
