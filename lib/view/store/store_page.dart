import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/bloc/store/store_bloc.dart';
import 'package:mayo_flutter/bloc/store/store_event.dart';
import 'package:mayo_flutter/bloc/store/store_state.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/view/components/proudct.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'store_scaffold.dart';
part 'store_info_header.dart';
part 'store_info_main.dart';
part 'store_info_section.dart';
part 'store_origin_info.dart';
part 'store_map.dart';

class StorePage extends StatelessWidget {
  const StorePage({
    super.key,
    required this.id,
  });

  final String id;

  // static int viewIndex = 0;

  // List view = [_StoreInfoMain(), _StoreMap(), _StoreOriginInfo(),];

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
    storeCategory: 1, //음식 종류
    storeSellingType: 1,
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreBloc()..add(ChangeViewEvent(0)),
      child: _Scaffold(
        topBar: Topbar(
          title: storeData.storeName,
          showCarts: false,
        ),
        infoHeader: _StoreInfoHeader(),
        infoMain: _StoreInfoMain(),
      ),
    );
  }
}
