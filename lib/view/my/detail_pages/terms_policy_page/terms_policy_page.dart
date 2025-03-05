import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'terms_policy_scaffold.dart';
part 'terms_policy_terms_of_use.dart';

class TermsPolicyPage extends StatelessWidget {
  const TermsPolicyPage({super.key, required this.board});

  final Board board;

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '서비스 이용 약관', showCarts: false),
      termsOfUse: _TermsOfUse(board: board),
    );
  }
}
