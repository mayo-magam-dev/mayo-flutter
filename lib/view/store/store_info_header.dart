part of 'store_page.dart';

class _StoreInfoHeader extends StatefulWidget {
  const _StoreInfoHeader({required this.storeData});

  final ReadStore storeData;

  @override
  State<_StoreInfoHeader> createState() => _StoreInfoHeaderState();
}

class _StoreInfoHeaderState extends State<_StoreInfoHeader> {
  final userDataSource = UserDataSource();

  void favoriteStoresResponse() async {
    final favoriteData = await userDataSource.getFavoriteStores();
    setState(() {
      favoriteStores = favoriteData;
      favorite = favoriteStores!
          .any((favoriteStores) => favoriteStores.id == widget.storeData.id);
    });
  }

  void noticeStoresResponse() async {
    final noticeData = await userDataSource.getNoticeStores();
    setState(() {
      noticeStores = noticeData;
      notice = noticeStores!.any(
        (noticeStores) => noticeStores.id == widget.storeData.id,
      );
    });
  }

  featchData() {
    favoriteStoresResponse();
    noticeStoresResponse();
  }

  bool favorite = false;
  bool notice = false;
  List<ReadStore>? favoriteStores;
  List<ReadStore>? noticeStores;

  @override
  void initState() {
    super.initState();
    featchData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            clipBehavior: Clip.none,
            children: [
              (widget.storeData.mainImage.length > 4)
                  ? Image.network(
                      widget.storeData.mainImage,
                      width: double.infinity,
                      height: 235.h,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      "assets/images/empty_cart.png",
                      width: double.infinity,
                      height: 235.h,
                      fit: BoxFit.cover,
                    ),
              Positioned(
                  bottom: -25.h,
                  child: Container(
                    width: 390.w,
                    height: 50.h,
                    padding: EdgeInsets.only(top: 9.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.w),
                            topRight: Radius.circular(15.w)),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () async {
                            setState(() {
                              favorite = !favorite;
                            });
                            userDataSource
                                .putFavoriteStore(widget.storeData.id);
                          },
                          icon: SvgPicture.asset(
                            favorite
                                ? "assets/icons/selected_like_function.svg"
                                : "assets/icons/heart-border.svg",
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            setState(() {
                              notice = !notice;
                            });
                            userDataSource.putNoticeStore(widget.storeData.id);
                          },
                          icon: SvgPicture.asset(
                            notice
                                ? "assets/icons/selected_alert_function.svg"
                                : "assets/icons/alert-border.svg",
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                        SizedBox(
                          width: 25.w,
                        )
                      ],
                    ),
                  )),
              Positioned(
                left: 25.w,
                bottom: -25.h,
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.w),
                    image: DecorationImage(
                      image: (widget.storeData.storeImage.length > 4)
                          ? NetworkImage(widget.storeData.storeImage)
                          : AssetImage('assets/images/empty_cart.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.storeData.storeName,
                    style: AppTextStyle.heading2Bold,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                        width: 16.w,
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        widget.storeData.address,
                        style: AppTextStyle.body2Medium
                            .copyWith(color: GlobalMainGrey.grey700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SelectableMenu(
                        menuName: "가게 정보",
                        menuIcon: "calendar.svg",
                        onTap: () {
                          context.read<StoreBloc>().add(ChangeViewEvent(0));
                        },
                      ),
                      SelectableMenu(
                        menuName: "가게 위치",
                        menuIcon: "location-with-ground.svg",
                        onTap: () {
                          context.read<StoreBloc>().add(ChangeViewEvent(1));
                        },
                      ),
                      SelectableMenu(
                        menuName: "전화 문의",
                        menuIcon: "call.svg",
                        onTap: () {
                          launchUrl(Uri(
                            scheme: 'tel',
                            path: widget.storeData.storeNumber,
                          )); //전화 연결
                        },
                      ),
                      SelectableMenu(
                        menuName: "원산지 정보",
                        menuIcon: "info.svg",
                        onTap: () {
                          context.read<StoreBloc>().add(ChangeViewEvent(2));
                        },
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              height: 1.h,
              color: GlobalMainGrey.grey200,
            ),
          )
        ],
      );
    });
  }
}

class SelectableMenu extends StatelessWidget {
  const SelectableMenu(
      {super.key,
      required this.menuName,
      required this.menuIcon,
      required this.onTap});
  final String menuName;
  final String menuIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/icons/$menuIcon",
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(menuName, style: AppTextStyle.body2Medium)
          ],
        ));
  }
}
