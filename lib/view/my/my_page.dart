import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/providers/login_provider.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';
import 'package:mayo_flutter/model/user/read_user.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/router/app_routes.dart';

part 'my_header.dart';
part 'my_middle.dart';
part 'my_scaffold.dart';

class MyPage extends ConsumerStatefulWidget {
  const MyPage({super.key});

  @override
  ConsumerState<MyPage> createState() => _MyPageState();
}

class _MyPageState extends ConsumerState<MyPage> with RouteAware {
  final RouteObserver<ModalRoute<void>> routeObserver =
      RouteObserver<ModalRoute<void>>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPopNext() {
    // 다른 페이지에서 돌아왔을 때 마이페이지 새로고침
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<LoginState>(loginNotifierProvider, (previous, next) {
      // 로그인 상태가 변경되면 마이페이지 새로고침
      if (next is LoginStateChanged) {
        setState(() {});
      }
    });

    return _Scaffold(
      topBar: Topbar(title: '마이페이지', showCarts: true),
      header: _MyHeader(),
      middle: _MyMiddle(),
    );
  }
}
