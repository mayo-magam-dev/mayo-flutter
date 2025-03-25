import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'announcement_scaffold.dart';
part 'announcemnt_list.dart';

class AnnouncementDetailPage extends StatelessWidget {
  const AnnouncementDetailPage({super.key, required this.board});

  final Board board;

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: board.title,
        showCarts: true,
      ),
      announcemntLists: _Lists(boards: [board]),
    );
  }
}
