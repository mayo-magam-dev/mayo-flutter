part of 'profile_page.dart';

class _Header extends StatelessWidget {
  const _Header({
    required this.photoUrl,
  });

  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                image: DecorationImage(
                  image: NetworkImage(photoUrl),
                ),
              ),
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
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
