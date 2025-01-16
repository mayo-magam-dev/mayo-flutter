part of 'home_page.dart';

class _HomeHeader extends StatelessWidget {
  // ignore: unused_element
  const _HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //container대신 image들어가야됨
        Container(
          height: 213.h,
          width: double.infinity,
          color: GlobalMainGrey.grey200,
        ),
        Padding(
          padding: EdgeInsets.only(top: 9.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 5,
                decoration: ShapeDecoration(
                  color: GlobalMainGrey.grey300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Container(
                width: 5,
                height: 5,
                decoration: ShapeDecoration(
                  color: GlobalMainGrey.grey100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Container(
                width: 5,
                height: 5,
                decoration: ShapeDecoration(
                  color: GlobalMainGrey.grey100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
