import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/bottom_bar.dart';
import 'package:mayo_flutter/view/components/store_list.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'on_discount_scaffold.dart';
part 'on_discount_header.dart';

class OnDiscountPage extends StatelessWidget {
  const OnDiscountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '지금 할인 중', showCarts: false),
      header: _OnDiscountHeader(),
      storeList: Column(
        children: [
          // StoreList(

          //   showPackagingBox: true,
          //   showStoreBox: true,
          // ),
          // StoreList(
          //   showPackagingBox: false,
          //   showStoreBox: true,
          // ),
          StoreList.notShowList()
        ],
      ),
      bottomBar: BottomBar(index: 2),
    );
  }
}
