import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'favorite_store_scaffold.dart';
part 'favorite_store_header.dart';
part 'favorite_store_list.dart';

class FavoriteStorePage extends StatelessWidget {
  const FavoriteStorePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '찜한 가게', showCarts: true),
      header: _Header(),
      favoriteStoreList: _FavoriteStoreList()
    );
  }
}