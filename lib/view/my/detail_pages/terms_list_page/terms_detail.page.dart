import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/dataSource/board.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

class TermsDetailPage extends StatelessWidget {
  const TermsDetailPage({
    super.key,
    required this.boardId,
  });
  final String? boardId;

  Future<Board> featchData() async {
    return await BoardDataSource().getBoard(boardId!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: featchData(),
          builder: (context, snapshot) {
            final List<String>? contentSplited =
                snapshot.data?.content.split('\n');
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Topbar(title: '서비스 이용 약관', showCarts: false),
                    Divider(
                      color: GlobalMainGrey.grey200,
                      thickness: 2,
                    ),
                    SizedBox(height: 17.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 17,
                      ),
                      width: double.infinity,
                      child: RichText(
                        text: TextSpan(
                          text: contentSplited?.first != null
                              ? '${contentSplited!.first}\n\n'
                              : '',
                          style: AppTextStyle.heading2Bold.copyWith(
                            color: GlobalMainColor.globalPrimaryBlackColor,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.48,
                          ),
                          children: [
                            TextSpan(
                              text: contentSplited?.sublist(1).join('\n') !=
                                      null
                                  ? '${contentSplited?.sublist(1).join('\n')}\n\n'
                                  : '',
                              style: AppTextStyle.body2Medium.copyWith(
                                color: GlobalMainColor.globalPrimaryBlackColor,
                                letterSpacing: -0.28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
