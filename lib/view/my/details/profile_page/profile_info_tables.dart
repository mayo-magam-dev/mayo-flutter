part of 'profile.dart';

class _InfoTables extends StatelessWidget {
  //ignore: unused_element
  const _InfoTables({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 272.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
            width: 1,
            color: Colors.black.withValues(alpha: 0.3),
          ),
        ),
      ),
      child: Column(
        children: [
          Table(
            children: [
              TableRow(
                children: [
                  Text('data'),
                  Text('data'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
