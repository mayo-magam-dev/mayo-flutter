part of 'sign_up_step5_page.dart';

class _SignUpDecoration extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 238.h,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 189),
            width: 141,
            height: 141,
            decoration: ShapeDecoration(
              color: Color(0xFFFFF4D0),
              shape: CircleBorder(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 91,
              top: 34,
            ),
            width: 34,
            height: 31,
            decoration: ShapeDecoration(
              color: Color(0xFFFFF4D0),
              shape: CircleBorder(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 61,
              top: 168,
            ),
            width: 71,
            height: 71,
            decoration: ShapeDecoration(
              color: Color(0xFFFFF4D0),
              shape: CircleBorder(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 95,
              top: 30,
            ),
            child: SvgPicture.asset('assets/icons/pancake.svg'),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 312,
              top: 158,
            ),
            width: 9,
            height: 9,
            decoration: ShapeDecoration(
              color: Color(0xFFFFF4D0),
              shape: CircleBorder(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 282,
              top: 195,
            ),
            width: 19,
            height: 17,
            decoration: ShapeDecoration(
              color: Color(0xFFFFF4D0),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
