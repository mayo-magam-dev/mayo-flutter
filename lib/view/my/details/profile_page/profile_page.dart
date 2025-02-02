import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/bottom_bar.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'profile_scaffold.dart';
part 'profile_header.dart';
part 'profile_info_tables.dart';
part 'profile_account_actions.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '내정보', showCarts: false),
      header: _Header(),
      infoTables: _InfoTables(),
      accountActions: _AccountActions(),
      bottomBar: BottomBar(index: 3),
    );
  }
}
