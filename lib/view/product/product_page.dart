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

class ProductPage extends StatefulWidget {
  ProductPage({
    super.key,
    required this.id,
  });

  String id;

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
            infoImage: Image.network(
              snapshot.data!.itemImage!,
              width: 390.w,
              height: 245.h,
              fit: BoxFit.cover,
            ),
            infoText: _ProductInfo(itemData: snapshot.data),
            infoButton: PressButton(
              text: '예약하기',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return _BottomSheet(itemData: snapshot.data);
                  },
                );
              },
            ),
          );
        });
  }
}
