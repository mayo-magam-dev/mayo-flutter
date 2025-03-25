import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:mayo_flutter/dataSource/board.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'event_scaffold.dart';
part 'event_list.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '이벤트', showCarts: true),
      eventList: _List(),
    );
  }
}
