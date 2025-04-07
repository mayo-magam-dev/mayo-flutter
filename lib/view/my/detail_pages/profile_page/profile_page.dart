import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/user/read_user.dart';

import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/view/my/detail_pages/acount_delete_page/account_delete_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/terms_policy_lists_page/terms_policy_page.dart';

part 'profile_scaffold.dart';
part 'profile_header.dart';
part 'profile_info_table.dart';
part 'profile_account_actions.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({
    super.key,
  });

  final userDataSource = UserDataSource().getUser();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: userDataSource,
        builder: (context, snapshot) {
          return _Scaffold(
            topBar: Topbar(title: '내정보', showCarts: false),
            header: _Header(
              photoUrl: snapshot.data?.photoUrl ?? '',
            ),
            infoTables: _InfoTable(
              userData: snapshot.data,
            ),
            accountActions: _AccountActions(),
          );
        });
  }
}
