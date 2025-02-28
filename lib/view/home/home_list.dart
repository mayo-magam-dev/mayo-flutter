part of 'home_page.dart';

class _List extends StatelessWidget {
  //ignore: unused_element
  const _List({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 424.h,
      padding: EdgeInsets.fromLTRB(24, 29, 24, 21),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '일상에서 마요가 필요한 순간!',
                  style: AppTextStyle.heading2Bold.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
                    letterSpacing: -0.84,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 10.2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.h),
          Consumer<HomeViewModel>(
            builder: (context, viewModel, child) {
              if (viewModel.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              return Column(
                children: viewModel.randomStores.map((store) {
                  return Column(
                    children: [
                      StoreInfoBar(
                        storeName: store.storeName,
                        storeDescription: '${store.address}\n최대 ${store.maxSalePercent.toStringAsFixed(0)}% 할인중',
                        imageUrl: 'assets/icons/store_food_example.svg',
                        onTap: () {
                          context.push('/store/${store.id}');
                        },
                      ),
                      if (store != viewModel.randomStores.last)
                        Container(
                          width: double.infinity,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: GlobalMainGrey.grey200,
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
