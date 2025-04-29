import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/user/read_user.dart';

import 'package:mayo_flutter/view/components/top_bar.dart';

part 'profile_scaffold.dart';
part 'profile_header.dart';
part 'profile_info_table.dart';
part 'profile_account_actions.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ReadUser? userData;

  featchUserData() async {
    final getUserData = await UserDataSource().getUser();
    setState(() {
      userData = getUserData;
    });
  }

  @override
  void initState() {
    super.initState();
    featchUserData();
  }

  @override
  Widget build(BuildContext context) {
    if (userData == null) {
      CircularProgressIndicator();
    } else {
      return _Scaffold(
        topBar: Topbar(title: '내정보', showCarts: false),
        header: _Header(
          photoUrl: userData!.photoUrl ?? '',
        ),
        infoTables: _InfoTable(),
        accountActions: _AccountActions(),
      );
    }
    return SizedBox();
  }
}
