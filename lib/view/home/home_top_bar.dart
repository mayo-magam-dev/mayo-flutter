part of 'home_page.dart';

class _TopBar extends StatelessWidget {
  //ignore: unused_element
  const _TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/icons/mayo_logo_80x27.png'),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context.push('/cart');
                },
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                      child: SvgPicture.asset('assets/icons/cart.svg'),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: ShapeDecoration(
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          state.cartItemCount.toString(),
                          style: AppTextStyle.captionMedium.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
