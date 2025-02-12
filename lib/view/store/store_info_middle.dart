part of 'store_page.dart';

class _StoreInfoMiddle extends StatelessWidget {
  // ignore: unused_element
  const _StoreInfoMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("영업 시간 및 마감할인 시간", style: AppTextStyle.subheadingBold),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                    "영업시간 : 화 ~ 토  11:00 ~ 21:00\n마감할인 시간 : 화 ~ 토  11:00 ~ 21:00",
                    style: AppTextStyle.body1Medium),
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            height: 1.h,
            color: GlobalMainGrey.grey200,
          ),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("가게 공지사항", style: AppTextStyle.subheadingBold),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "사장님이 설정한 공지사항이 여기에 나오는데 길어질 경우 펼치기 접기가 가능합니다. 두줄만 나옴. 이거 넘어가면 점점점 생김사장님이 설정한 공지사항이 여기에 나오는데 길어질 경우 펼치기 접기가 가능합니다. 두줄만 나옴. 이거 넘어가면 점점점 생김",
                  style: AppTextStyle.body1Medium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            height: 1.h,
            color: GlobalMainGrey.grey200,
          ),
        ),
      ],
    );
  }
}
