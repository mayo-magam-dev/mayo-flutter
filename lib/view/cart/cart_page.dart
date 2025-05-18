import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
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

  featchCartData() async {
  try {
    final cartDataSource = await CartDataSource().getCarts();
    setState(() {
      futureCart = cartDataSource;
    });
  } catch (e) {
    debugPrint("장바구니 데이터 불러오기 실패: $e");
    setState(() {
      futureCart = []; 
    });
  }
}


  @override
  void initState() {
    super.initState();
    featchCartData();
  }

  @override
  Widget build(BuildContext context) {
    if (futureCart == null) {
      return Center(child: const CircularProgressIndicator());
    } else if (futureCart!.isNotEmpty) {
      return _Scaffold(
        topBar: Topbar(
          title: '장바구니',
          showCarts: true,
        ),
        content: _CartContent(futureCart!),
        requestButton: PressButton(
          text: "예약하기",
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) {
              return _CartBottomSheet();
            },
          ),
        ),
      );
    } else {
      return _CartEmpty();
    }
  }
}
