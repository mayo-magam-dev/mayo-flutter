part of 'home_page.dart';

class _List extends StatelessWidget {
  //ignore: unused_element
  const _List({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 424.h,
      // padding: EdgeInsets.fromLTRB(24, 29, 24, 21),
      padding: EdgeInsets.fromLTRB(24, 19, 21, 0),
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
                  onPressed: () {
                    context.push('/onsale');
                  },
                  icon: SvgPicture.asset('assets/icons/right_arrow2.svg'),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.h),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              return Padding(
                padding: EdgeInsets.only(right: 3.w),
                child: Column(
                  children: state.randomStores.map((store) {
                    Future<ReadStore> data =
                        StoreDataSource().getStoreDetail(store.id);
                    return Column(
                      children: [
                        FutureBuilder(
                            future: data,
                            builder: (context, snapshot) {
                              if (snapshot.hasData == false) {
                                return SizedBox();
                              }
                              return StoreInfoBar(
                                storeName: store.storeName,
                                storeDescription:
                                    '${store.address}\n최대 ${store.maxSalePercent.toStringAsFixed(0)}% 할인중',
                                imageUrl: snapshot.data!.storeImage,
                                onTap: () {
                                  context.push('/store/${store.id}');
                                },
                              );
                            }),
                        if (store != state.randomStores.last)
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
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
