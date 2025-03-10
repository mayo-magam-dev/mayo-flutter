import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/view/components/proudct.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'store_scaffold.dart';
part 'store_info_header.dart';
part 'store_info_middle.dart';
part 'store_info_bottom.dart';
part 'store_origin_info.dart';

class StorePage extends StatelessWidget {
  const StorePage({
    super.key,
    required this.id,
  });

  final String id;

  static ReadStore storeData = ReadStore(
    id: '', //가게별 고유 값
    storeName: '힘쎈드위치',
    openState: true,
    address: '광주광역시 동구 지산로 38',
    storeImage: 'store_info_logo_example.png',
    openTime: '11:00',
    closeTime: '21:00',
    saleStart: '19:00',
    saleEnd: '21:00',
    storeDescription: '가게 설명',
    storeNumber: '가게 전화번호',
    storeMapUrl: '가게 지도 url',
    originInfo: '국내산',
    additionalComment: '추가 설명',
    storeCategory: 1, //음식 종류류
    storeSellingType: 1,
  );

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: storeData.storeName,
        showCarts: false,
      ),
      infoHeader: _StoreInfoHeader(),
      infoMiddle: _StoreInfoMiddle(),
      infoBottom: _StoreInfoBottom(),
    );
  }
}
