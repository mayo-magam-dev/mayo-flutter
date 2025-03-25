import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mayo_flutter/dataSource/board.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/view/my/detail_pages/terms_policy_page/terms_policy_page.dart';

part 'terms_policy_scaffold.dart';
part 'terms_policy_list.dart';

class TermsPolicyListsPage extends StatelessWidget {
  const TermsPolicyListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '약관', showCarts: true),
      termsPolicyLists: _List(),
    );
  }
}
