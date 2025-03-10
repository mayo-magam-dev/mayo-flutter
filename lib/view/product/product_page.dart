import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:mayo_flutter/dataSource/item.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/view/cart/cart_page.dart';
import 'package:mayo_flutter/view/components/press_button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'prouduct_scaffold.dart';
part 'product_info.dart';
part 'product_bottom_sheet.dart';
part 'product_on_cart.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  static ReadItem itemData = ReadItem(
    itemId: '1',
    itemName: '반반 샌드워치',
    itemDescription: '아이템 설명을 작성하세요!',
    originalPrice: 24000,
    salePercent: 25,
    itemQuantity: 5,
    itemOnSale: true,
    itemImage: 'store_product_info_example.png',
    salePrice: 18000,
    cookingTime: 10,
    additionalInformation: '전달사항을을 작성하세요!',
  );

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: "상품 정보",
        showCarts: true,
      ),
      infoImage: Image.asset(
        "assets/images/${itemData.itemImage}",
        fit: BoxFit.cover,
        height: 245.h,
        width: 390.w,
      ),
      infoText: _ProductInfo(),
      infoButton: PressButton(
          text: "예약하기",
          onPressed: () => showModalBottomSheet(
              barrierColor: Colors.transparent,
              context: context,
              builder: (context) {
                return _BottomSheet();
              })),
    );
  }
}
