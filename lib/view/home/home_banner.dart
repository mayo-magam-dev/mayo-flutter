part of 'home_page.dart';

class _Banner extends StatefulWidget {
  // ignore: unused_element
  const _Banner({super.key});

  @override
  State<_Banner> createState() => _BannerState();
}

class _BannerState extends State<_Banner> {
  final controller = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 212.h,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: state.banners.length,
                itemBuilder: (context, index) {
                  final banner = state.banners[index];
                  return Image.network(
                    banner.imageUrl,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 9.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    state.banners.length,
                    (index) => Container(
                      margin: EdgeInsets.only(
                        right: index != state.banners.length - 1 ? 15 : 0,
                      ),
                      width: 5,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: pageIndex == index
                            ? GlobalMainGrey.grey300
                            : GlobalMainGrey.grey100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
