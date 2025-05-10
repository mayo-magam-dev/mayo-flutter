part of 'cart_page.dart';

class _CartBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 31.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("유의사항", style: AppTextStyle.heading3Bold),
            SizedBox(height: 9.h),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/time.svg",
                ),
                SizedBox(width: 4.w),
                Text("오늘 ",
                    style: AppTextStyle.body2Bold
                        .copyWith(color: GlobalMainGrey.grey600)),
                Text(
                    '${_CartContent.pickupTime.toString().substring(11, 13)}시 ${_CartContent.pickupTime.toString().substring(14, 16)}분',
                    style: AppTextStyle.body2Bold
                        .copyWith(color: GlobalMainColor.globalMainColor)),
                Text("에 꼭 와주세요!",
                    style: AppTextStyle.body2Bold
                        .copyWith(color: GlobalMainGrey.grey600))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                "노쇼는 추후 이용에 제한이 있을 수 있습니다.",
                style: AppTextStyle.captionBold
                    .copyWith(color: GlobalMainGrey.grey600),
              ),
            ),
            SizedBox(height: 9.h),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/coin.svg",
                ),
                SizedBox(width: 4.w),
                Text(
                  "결제는 현장에서 이루어집니다.",
                  style: AppTextStyle.body2Bold
                      .copyWith(color: GlobalMainGrey.grey600),
                ),
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            PressButton(
              text: "예약하기",
              onPressed: () {
                final request = CreateReservationRequest(
                  pickupTime: _CartContent.pickupTime!,
                  reservationIsPlastic: _CartContent.disposable,
                  reservationRequest: _CartContent.reservationRequest,
                );
                ReservationDataSource().createReservation(request: request);
                context.go("/");
              },
            )
          ],
        ),
      ),
    );
  }
}
