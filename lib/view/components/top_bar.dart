import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/home/home_bloc.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';

class Topbar extends StatelessWidget implements PreferredSizeWidget {
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
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final bool canPop = Navigator.of(context).canPop();

    // ✅ BlocProvider 제거 → BlocBuilder만 사용
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final loginBlocState = context.read<LoginBloc>().state;
        LocalLoginState? loginState;
        if (loginBlocState is LoginStateChanged) {
          loginState = loginBlocState.loginState;
        }

        return Material(
          color: Colors.white,
          elevation: 0,
          child: SafeArea(
            bottom: false,
            child: Container(
              height: preferredSize.height,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (homeTapBar)
                    Image.asset('assets/icons/mayo_logo_80x27.png')
                  else if (canPop)
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: SvgPicture.asset('assets/icons/arrow.svg'),
                    )
                  else
                    const SizedBox(width: 24),
                  Text(
                    title,
                    style: AppTextStyle.body1Medium,
                  ),
                  showCarts
                      ? GestureDetector(
                          onTap: () {
                            if (loginState == LocalLoginState.notLogin ||
                                loginState == LocalLoginState.needJoin) {
                              context.push('/login');
                            } else {
                              context.push('/cart');
                            }
                          },
                          child: Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                                child:
                                    SvgPicture.asset('assets/icons/cart.svg'),
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
                        )
                      : const SizedBox(width: 24),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
