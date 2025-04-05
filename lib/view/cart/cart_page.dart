import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/dataSource/cart.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/util/formater.dart';
import 'package:mayo_flutter/view/components/press_button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'cart_scaffold.dart';
part 'cart_content.dart';
part 'cart_bottom_sheet.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: '장바구니',
        showCarts: true,
      ),
      content: _CartContent(),
      requestButton: SizedBox.shrink(),
      // requestButton: PressButton(
      //     text: "예약하기",
      //     onPressed: () => showModalBottomSheet(
      //         context: context,
      //         builder: (context) {
      //           return _CartBottomSheet();
      //         })),
    );
  }
}
