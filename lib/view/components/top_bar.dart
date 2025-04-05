import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/home/home_bloc.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class Topbar extends StatelessWidget {
  const Topbar({
    super.key,
    required this.title,
    required this.showCarts,
    this.homeTapBar = false,
  });
  final String title;
  final bool showCarts;
  final bool homeTapBar;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                homeTapBar
                    ? Image.asset('assets/icons/mayo_logo_80x27.png')
                    : GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                homeTapBar
                    ? SizedBox.shrink()
                    : Text(
                        title,
                        style: AppTextStyle.body1Medium,
                      ),
                GestureDetector(
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
                            state.cartItems.length.toString(),
                            style: AppTextStyle.captionMedium.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
