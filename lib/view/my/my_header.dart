part of 'my_page.dart';

class _MyHeader extends StatelessWidget {
  const _MyHeader();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final loginState = state is LoginStateChanged ? state.loginState : null;

        if (loginState != LocalLoginState.login) {
          return _buildHeader(context, loginState, null);
        }

        return FutureBuilder(
          future: UserDataSource().getUser(),
          builder: (context, snapshot) {
            return _buildHeader(context, loginState, snapshot.data);
          },
        );
      },
    );
  }

  Widget _buildHeader(
      BuildContext context, LocalLoginState? loginState, dynamic user) {
    return Column(
      children: [
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: GlobalMainGrey.grey100,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 113.h,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Row(
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
                ],
              ),
              SizedBox(width: 16.w),
              GestureDetector(
                onTap: () {
                  if (loginState == LocalLoginState.login) {
                    context.push('/profile');
                  } else {
                    context.push('/login');
                  }
                },
                child: Row(
                  children: [
                    Text(
                      loginState == LocalLoginState.login
                          ? user?.name ?? ''
                          : '로그인/회원가입',
                      style: TextStyle(
                        color: GlobalMainColor.globalPrimaryBlackColor,
                        fontSize: 18.sp,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 12,
                color: GlobalMainGrey.grey50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
