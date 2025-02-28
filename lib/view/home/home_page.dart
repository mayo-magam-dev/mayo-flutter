import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/bottom_bar.dart';
import 'package:mayo_flutter/view/components/category_buttons.dart';
import 'package:mayo_flutter/view/components/store_info_bar.dart';
import 'package:mayo_flutter/viewModel/home_view_model.dart';
import 'package:provider/provider.dart';

part 'home_scaffold.dart';
part 'home_banner.dart';
part 'home_category.dart';
part 'home_list.dart';
part 'home_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel()..initializeHomeData(),
      child: _Scaffold(
        topBar: _TopBar(),
        banner: _Banner(),
        category: _Category(),
        storeList: _List(),
      ),
    );
  }
}
