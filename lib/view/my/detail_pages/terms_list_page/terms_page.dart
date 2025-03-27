import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/dataSource/board.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'terms_scaffold.dart';
part 'terms_ist.dart';

class TermsListPage extends StatelessWidget {
  const TermsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '약관 및 정책', showCarts: true),
      termsList: _List(),
    );
  }
}
