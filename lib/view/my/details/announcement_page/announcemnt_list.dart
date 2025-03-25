part of 'announcement_page.dart';

class _Lists extends StatelessWidget {
  const _Lists(
    {required this.boards}
  );

  final List<Board> boards;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: boards.map((board) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AnnouncementListItem(item: board),
          _AnnouncementContent(item: board),
        ],
      )).toList(),
    );
  }
}

class _AnnouncementListItem extends StatelessWidget {
  const _AnnouncementListItem({
    required this.item,
  });

  final Board item;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class _AnnouncementContent extends StatelessWidget {
  const _AnnouncementContent({
    required this.item,
  });

  final Board item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 1,
            thickness: 1,
            color: GlobalMainGrey.grey100,
          ),
          const SizedBox(height: 20),
          Text(
            item.content,
            style: AppTextStyle.body2Bold.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            item.writer!,
            style: AppTextStyle.body2Medium.copyWith(
              color: GlobalMainGrey.grey600,
            ),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
