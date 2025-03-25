part of 'faq_page.dart';

class _List extends StatefulWidget {
  const _List();

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  final BoardDataSource _boardDataSource = BoardDataSource();
  String selectedCategory = 'main';
  late Future<List<Board>> _faqFuture;

  final Map<String, String> _categories = {
    'main': '메인기능',
    'update': '업데이트',
    'store': '매장픽업',
    'payment': '결제/환불',
    'order': '주문관련',
    'account': '계정',
    'etc': '기타',
  };

  final Map<String, Future<List<Board>> Function(BoardDataSource)>
      _categoryFunctions = {
    'main': (ds) => ds.getFaqMainFeature(),
    'update': (ds) => ds.getFaqUpdateInfo(),
    'store': (ds) => ds.getFaqStorePickup(),
    'payment': (ds) => ds.getFaqPayment(),
    'order': (ds) => Future.wait([
          ds.getFaqOrderNotification(),
          ds.getFaqOrderHistory(),
        ]).then((results) => [...results[0], ...results[1]]),
    'account': (ds) => ds.getFaqDeleteAccount(),
    'etc': (ds) => ds.getFaqEtc(),
  };

  @override
  void initState() {
    super.initState();
    _loadFaqs();
  }

  void _loadFaqs() {
    _faqFuture = _categoryFunctions[selectedCategory]!(_boardDataSource);
  }

  Widget _buildCategory(String key, String text) {
    final bool isSelected = selectedCategory == key;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = key;
          _loadFaqs();
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 39.h,
        decoration: ShapeDecoration(
          color: isSelected ? const Color(0xFFFFC600) : GlobalMainGrey.grey100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style:
              (isSelected ? AppTextStyle.body1Bold : AppTextStyle.body1Medium)
                  .copyWith(
            color: GlobalMainColor.globalPrimaryBlackColor,
            letterSpacing: isSelected ? -0.32 : 0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 22,
          ),
          height: 83.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _categories.entries
                .map((e) => _buildCategory(e.key, e.value))
                .toList(),
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5,
                color: GlobalMainGrey.grey200,
              ),
            ),
          ),
        ),
        FutureBuilder<List<Board>>(
          future: _faqFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      snapshot.error.toString(),
                      style: AppTextStyle.body1Medium,
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _loadFaqs();
                        });
                      },
                      child: const Text('다시 시도'),
                    ),
                  ],
                ),
              );
            }

            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(height: 227.h),
                    SvgPicture.asset('assets/icons/bread.svg'),
                    SizedBox(height: 22.h),
                    Text(
                      'FAQ가 없습니다',
                      style: AppTextStyle.heading2Bold.copyWith(
                        color: GlobalMainColor.globalPrimaryBlackColor,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ],
                ),
              );
            }

            final faqs = snapshot.data!;
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: faqs.length,
              separatorBuilder: (context, index) => Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      color: GlobalMainGrey.grey200,
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, index) {
                final item = faqs[index];
                return Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    trailing: const SizedBox(),
                    title: Row(
                      children: [
                        SvgPicture.asset('assets/icons/question.svg'),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            item.title,
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ),
                      ],
                    ),
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: GlobalMainGrey.grey100,
                        ),
                        child: Text(
                          item.content,
                          style: AppTextStyle.body2Medium.copyWith(
                            color: GlobalMainColor.globalPrimaryBlackColor,
                            letterSpacing: -0.28,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
