import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mayo_flutter/dataSource/cart.dart';
import 'package:mayo_flutter/dataSource/item.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/cart/create_cart_request.dart';
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/util/formater.dart';
import 'package:mayo_flutter/view/cart/cart_page.dart';
import 'package:mayo_flutter/view/components/press_button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'prouduct_scaffold.dart';
part 'product_info.dart';
part 'product_bottom_sheet.dart';
part 'product_on_cart.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    super.key,
    required this.id,
    required this.storeName,
    required this.storeId,
  });

  final String id;
  final String storeId;
  final String storeName;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late final Future<ReadItem?> itemData;

  @override
  void initState() {
    super.initState();
    itemData = ItemDataSource().getItemById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: itemData,
        builder: (context, snapshot) {
          if (snapshot.hasData == false) {
            return CircularProgressIndicator();
          }
          return _Scaffold(
            topBar: Topbar(
              title: "상품 정보",
              showCarts: true,
            ),
            infoImage: snapshot.data!.itemImage!.isNotEmpty &&
                    snapshot.data!.itemImage != "."
                ? Image.network(
                    snapshot.data!.itemImage!,
                    width: 390.w,
                    height: 245.h,
                    fit: BoxFit.cover,
                  )
                : SizedBox(height: 245.h),
            infoText: _ProductInfo(
              itemData: snapshot.data,
              storeName: widget.storeName,
            ),
            infoButton: PressButton(
              text: '예약하기',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return _BottomSheet(
                      itemData: snapshot.data,
                      storeId: widget.storeId,
                    );
                  },
                );
              },
            ),
          );
        });
  }
}
