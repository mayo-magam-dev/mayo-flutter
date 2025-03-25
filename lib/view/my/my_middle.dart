part of 'my_page.dart';

class _MyMiddle extends StatelessWidget {
  //ignore: unused_element
  const _MyMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20.5),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => context.push('/announcement'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '공지사항',
                  style: AppTextStyle.body1Medium,
                ),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
          SizedBox(height: 41.h),
          GestureDetector(
            onTap: () => context.push('/event'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '이벤트',
                  style: AppTextStyle.body1Medium,
                ),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
          SizedBox(height: 41.h),
          GestureDetector(
            onTap: () => context.push('/favorite-store'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '찜한 가게',
                  style: AppTextStyle.body1Medium,
                ),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
          SizedBox(height: 41.h),
          GestureDetector(
            onTap: () => context.push('/costomer-center'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '고객센터',
                  style: AppTextStyle.body1Medium,
                ),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
          SizedBox(height: 41.h),
          GestureDetector(
            onTap: () => context.push('/faq'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '자주 묻는 질문',
                  style: AppTextStyle.body1Medium,
                ),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
