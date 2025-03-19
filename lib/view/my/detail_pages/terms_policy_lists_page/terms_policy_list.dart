part of 'terms_policy_page.dart';

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
      throw Exception('약관을 불러오는데 실패했습니다');
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
              '약관이 없습니다',
              style: AppTextStyle.body1Medium,
            ),
          );
        }

        final terms = snapshot.data!;
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: terms.length,
          separatorBuilder: (context, index) => Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.3,
                  color: GlobalMainGrey.grey200,
                ),
              ),
            ),
          ),
          itemBuilder: (context, index) {
            final item = terms[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsPolicyPage(board: item),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: AppTextStyle.body1Medium.copyWith(
                        color: GlobalMainColor.globalPrimaryBlackColor,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      DateFormat('yyyy/MM/dd').format(item.writeTime!),
                      style: AppTextStyle.body2Medium.copyWith(
                        color: GlobalMainGrey.grey600,
                        letterSpacing: -0.28,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
