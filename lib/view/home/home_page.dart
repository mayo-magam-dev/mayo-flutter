import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/home/home_bloc.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/view/components/category_buttons.dart';
import 'package:mayo_flutter/view/components/store_info_bar.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'home_scaffold.dart';
part 'home_banner.dart';
part 'home_category.dart';
part 'home_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: '',
        showCarts: true,
        homeTapBar: true,
      ),
      banner: _Banner(),
      category: _Category(),
      storeList: _List(),
    );
  }
}
