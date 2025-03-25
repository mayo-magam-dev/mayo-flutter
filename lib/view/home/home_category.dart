part of 'home_page.dart';

class _Category extends StatelessWidget {
  //ignore: unused_element
  const _Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 124.h,
          margin: EdgeInsets.only(top: 199.h),
          padding: EdgeInsets.symmetric(vertical: 13),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
          ),
          child: CategoryButton(),
        ),
        Container(
          width: double.infinity,
          height: 12.h,
          color: GlobalMainGrey.grey100,
        ),
      ],
    );
  }
}
