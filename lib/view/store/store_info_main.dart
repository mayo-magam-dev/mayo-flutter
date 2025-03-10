part of 'store_page.dart';

class _StoreInfoMain extends StatelessWidget {
  const _StoreInfoMain();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(
      builder: (context, state) {
        if (state.viewIndex == 0) {
          return _StoreInfoSection();
        } else if (state.viewIndex == 1) {
          return _StoreMap();
        } else if (state.viewIndex == 2) {
          return _StoreOriginInfo();
        }
        return SizedBox();
      },
    );
  }
}
