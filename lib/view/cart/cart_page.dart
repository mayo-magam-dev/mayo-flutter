import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/home/home_bloc.dart';
import 'package:mayo_flutter/dataSource/cart.dart';
import 'package:mayo_flutter/dataSource/reservation.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/model/reservation/create_reservation_request.dart';
import 'package:mayo_flutter/util/formater.dart';
import 'package:mayo_flutter/view/components/press_button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // ✅ 이거 꼭 필요!

part 'cart_scaffold.dart';
part 'cart_content.dart';
part 'cart_bottom_sheet.dart';
part 'cart_empty.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<ReadCartResponse>? futureCart;

  Future<void> fetchCartData() async {
    try {
      final cartDataSource = await CartDataSource().getCarts();
      setState(() {
        futureCart = cartDataSource;
      });
    } catch (e) {
      debugPrint("장바구니 데이터 불러오기 실패: $e");
      setState(() {
        futureCart = []; // 실패 시 빈 리스트
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCartData();
  }

  @override
  Widget build(BuildContext context) {
    final Widget content;
    final Widget requestButton;

    if (futureCart == null) {
      content = const Center(child: CircularProgressIndicator());
      requestButton = const SizedBox.shrink();
    } else if (futureCart!.isEmpty) {
      content = _CartEmpty();
      requestButton = const SizedBox.shrink();
    } else {
      content = _CartContent(futureCart!);
      requestButton = PressButton(
        text: "예약하기",
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => _CartBottomSheet(),
        ),
      );
    }

    return _Scaffold(
      topBar: const Topbar(
        title: '장바구니',
        showCarts: true,
      ),
      content: content,
      requestButton: requestButton,
    );
  }
}
