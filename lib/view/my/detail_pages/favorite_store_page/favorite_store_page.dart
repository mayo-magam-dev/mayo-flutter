import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
// import 'package:mayo_flutter/view/components/favorite_store_list.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'favorite_store_scaffold.dart';
part 'favorite_store_header.dart';

class FavoriteStorePage extends StatelessWidget {
  const FavoriteStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '찜한 가게', showCarts: true),
      header: _Header(),
      favoriteStoreList: Column(
        children: [
          // FavoriteStoreList(),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: GlobalMainGrey.grey200,
                ),
              ),
            ),
          ),
          // FavoriteStoreList(),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: GlobalMainGrey.grey200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
