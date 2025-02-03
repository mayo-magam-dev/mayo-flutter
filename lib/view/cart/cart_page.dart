import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'cart_scaffold.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: '장바구니',
        showCarts: true,
      ),
      content: Column(
        children: [
          Text('Product Page'),
        ],
      ),
      requestButton: ElevatedButton(
        onPressed: () {},
        child: Text('Requnu  est'),
      ),
    );
  }
}
