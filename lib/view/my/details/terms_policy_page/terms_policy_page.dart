import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'terms_policy_scaffold.dart';
part 'terms_policy_terms_of_use.dart';

class TermsPolicyPage extends StatelessWidget {
  const TermsPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '서비스 이용 약관', showCarts: false),
      termsOfUse: _TermsOfUse(),
    );
  }
}
