part of 'store_page.dart';

class _StoreInfoMain extends StatelessWidget {
  const _StoreInfoMain({
    required this.storeData,
    required this.itemData,
  });
  final ReadStore storeData;
  final List<ReadItem> itemData;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(
      builder: (context, state) {
        if (state.viewIndex == 0) {
          return _StoreInfoSection(
            storeData: storeData,
            itemData: itemData,
          );
        } else if (state.viewIndex == 1) {
          return _StoreMap(storeData: storeData);
        } else if (state.viewIndex == 2) {
          return _StoreOriginInfo(storeData: storeData);
        }
        return SizedBox();
      },
    );
  }
}
