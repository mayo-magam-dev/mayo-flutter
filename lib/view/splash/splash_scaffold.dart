part of 'splash_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({required this.logo, required this.introText});
  final Widget logo;
  final Text introText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 338.h),
              logo,
              SizedBox(height: 5.h),
              introText,
            ],
          ),
        ],
      ),
    );
  }
}
