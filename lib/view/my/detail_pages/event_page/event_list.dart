part of 'event_page.dart';

class _List extends StatelessWidget {
  const _List({required this.isEvent});

  final bool isEvent;

  Widget eventList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 17,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '릴레이 반값 할인 두 번재 주자, 힘쎈드위치',
            style: AppTextStyle.body1Medium.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            '2023/07/24',
            style: AppTextStyle.body1Medium.copyWith(
              color: GlobalMainGrey.grey600,
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: double.infinity,
            height: 193.h,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: isEvent
          ? [
              eventList(),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      color: GlobalMainGrey.grey200,
                    ),
                  ),
                ),
              ),
              eventList(),
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      color: GlobalMainGrey.grey200,
                    ),
                  ),
                ),
              ),
            ]
          : [
              SizedBox(height: 227.h),
              SvgPicture.asset('assets/icons/bread.svg'),
              SizedBox(height: 22.h),
              Text(
                '이벤트 빵 개',
                style: AppTextStyle.heading2Bold.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.48,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                '아직은 진행 중인 이벤트가 없어요.\n마요가 곧 즐거운 이벤트 소식으로 찾아뵐게요!',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
    );
  }
}
