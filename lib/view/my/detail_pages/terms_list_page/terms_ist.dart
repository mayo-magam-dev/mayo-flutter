part of 'terms_page.dart';

class _List extends StatefulWidget {
  const _List();

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  final BoardDataSource _boardDataSource = BoardDataSource();
  late Future<List<Board>> _termsFuture;

  @override
  void initState() {
    super.initState();
    _termsFuture = _fetchTerms();
  }

  Future<List<Board>> _fetchTerms() async {
    try {
      final terms = await _boardDataSource.getTermsBoard();
      return terms;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception('약관 및 정책을 불러오는데 실패했습니다');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Board>>(
      future: _termsFuture,
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
                      _termsFuture = _fetchTerms();
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
            child: Text(
              '약관 및 정책이 없습니다',
              style: AppTextStyle.body1Medium,
            ),
          );
        }

        final terms = snapshot.data!;
        final List<String> router = ['terms', 'marketing', 'conditions'];
        return Expanded(
          child: ListView.builder(
            itemCount: terms.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  _TermsList(item: terms[index], router: router[index]),
                  Divider(
                    color: GlobalMainGrey.grey200,
                    thickness: 2,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class _TermsList extends StatelessWidget {
  _TermsList({
    required this.item,
    required this.router,
  });
  final Board item;
  final String router;
  late String title;

  void titleSet() {
    switch (router) {
      case 'terms':
        title = '서비스 이용 약관 보기';
      case 'conditions':
        title = '개인정보 수집 및 이용 동의';
      case 'marketing':
        title = '마케팅 정보 메일, SMS 수신 동의';
    }
  }

  @override
  Widget build(BuildContext context) {
    titleSet();
    return InkWell(
      onTap: () {
        context.push('/terms-detail/${item.boardId}');
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyle.body1Medium.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
                  ),
                ),
                Text(
                  '[전문 보기]',
                  style: AppTextStyle.body1Medium.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
