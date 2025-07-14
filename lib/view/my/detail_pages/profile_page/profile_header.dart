part of 'profile_page.dart';

class _Header extends StatelessWidget {
  const _Header({
    required this.photoUrl,
    required this.displayName,
  });

  final String photoUrl;
  final String displayName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(),
                    color: Color(0xFFFFF7DA),
                  ),
                  child: Icon(Icons.person),
                ),
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 60, top: 45),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 25,
                      height: 25,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(),
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          displayName,
          style: AppTextStyle.heading2Bold,
        ),
      ],
    );
  }
}
