part of 'my_page.dart';

class _MyHeader extends ConsumerStatefulWidget {
  const _MyHeader();

  @override
  ConsumerState<_MyHeader> createState() => _MyHeaderState();
}

class _MyHeaderState extends ConsumerState<_MyHeader> {
  ReadUser? user;
  LocalLoginState? loginState;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchUser();
  }

  @override
  void didUpdateWidget(_MyHeader oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 부모 위젯이 새로고침될 때 사용자 정보도 새로고침
    _fetchUser();
  }

  void _fetchUser() async {
    final loginState = ref.read(loginNotifierProvider);
    final currentLoginState =
        loginState is LoginStateChanged ? loginState.loginState : null;
    setState(() {
      this.loginState = currentLoginState;
      isLoading = true;
    });
    if (currentLoginState == LocalLoginState.login) {
      try {
        final fetchedUser = await UserDataSource().getUser();
        setState(() {
          user = fetchedUser;
          isLoading = false;
        });
      } catch (e) {
        setState(() {
          user = null;
          isLoading = false;
        });
      }
    } else {
      setState(() {
        user = null;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SizedBox(height: 113.h);
    }
    return _buildHeader(context, loginState, user);
  }

  Widget _buildHeader(
      BuildContext context, LocalLoginState? loginState, ReadUser? user) {
    return Column(
      children: [
        Divider(height: 1, color: GlobalMainGrey.grey100),
        Container(
          width: double.infinity,
          height: 113.h,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0xFFFFF7DA),
                ),
                child: Icon(Icons.person, size: 40),
              ),
              SizedBox(width: 16.w),
              GestureDetector(
                onTap: () {
                  if (loginState == LocalLoginState.login) {
                    context.push(AppRoutes.profile);
                  } else {
                    context.push(AppRoutes.login);
                  }
                },
                child: Row(
                  children: [
                    Text(
                      loginState == LocalLoginState.login
                          ? user?.displayName ?? ''
                          : '로그인/회원가입',
                      style: TextStyle(
                        color: GlobalMainColor.globalPrimaryBlackColor,
                        fontSize: 18.sp,
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
        Divider(height: 12, color: GlobalMainGrey.grey50),
      ],
    );
  }
}
