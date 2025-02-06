import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'order_scaffold.dart';
part 'order_content.dart';

class MyorderPage extends StatelessWidget {
  const MyorderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: '주문내역',
        showCarts: false,
      ),
      content: _MyorderContent(),
      bottomBar: Container(),
    );
  }
}
