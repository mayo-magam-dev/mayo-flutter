import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/dataSource/reservation.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_detail_response.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_response.dart';
import 'package:mayo_flutter/util/formater.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/view/orders/order_detail_page.dart';

part 'order_scaffold.dart';
part 'order_content.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: '주문내역',
        showCarts: false,
      ),
      content: _OrderContent(),
      bottomBar: Container(),
    );
  }
}
