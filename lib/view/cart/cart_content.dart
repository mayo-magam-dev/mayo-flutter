part of 'cart_page.dart';

class _CartContent extends StatelessWidget {
  const _CartContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.w),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/pin.svg",
                  height: 30.h, width: 30.w),
              SizedBox(width: 6.w),
              Text(
                "힘쎈드위치",
                style: AppTextStyle.heading3Bold,
              )
            ],
          ),
        ),
        Container(
          height: 1.h,
          color: GlobalMainGrey.grey200,
        ),
        _ProductInCart(),
        _ProductInCart(),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.w),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "총 21,000원",
                style: AppTextStyle.body1Bold,
              ),
            )),
        Container(
          height: 12.h,
          color: GlobalMainGrey.grey200,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "픽업 시간 입력",
                style: AppTextStyle.body1Bold,
              ),
              SizedBox(height: 14.w),
              Container(
                width: 335.w,
                height: 45.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: GlobalMainGrey.grey100,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text("픽업시간을 선택해 주세요.",
                    style: AppTextStyle.body1Medium
                        .copyWith(color: GlobalMainGrey.grey400)),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "요청사항을 입력해주세요.",
                style: AppTextStyle.body1Medium,
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 1.h,
                color: GlobalMainGrey.grey200,
              ),
              SizedBox(
                height: 21.h,
              ),
              Row(
                children: [
                  Text("일회용품 사용여부", style: AppTextStyle.body1Medium),
                  Spacer(),
                  CupertinoSwitch(
                    value: true,
                    activeTrackColor: GlobalMainColor.globalButtonColor,
                    onChanged: (value) {},
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class _ProductInCart extends StatelessWidget {
  const _ProductInCart();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: GlobalMainGrey.grey200),
        bottom: BorderSide(color: GlobalMainGrey.grey200),
      )),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 66.w,
            height: 66.h,
            decoration: BoxDecoration(
                color: GlobalMainGrey.grey200,
                borderRadius: BorderRadius.circular(10.r)),
          ),
          SizedBox(
            width: 22.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "반반 샌드위치",
                style: AppTextStyle.body1Bold,
              ),
              SizedBox(height: 8.h),
              Text(
                "18,000원",
                style: AppTextStyle.body1Medium,
              )
            ],
          ),
          SizedBox(width: 87.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset("assets/icons/x.svg"),
              SizedBox(height: 16.h),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/minus.svg",
                    width: 30.w,
                  ),
                  SizedBox(width: 4.w),
                  Text("1", style: AppTextStyle.body1Bold),
                  SizedBox(width: 4.w),
                  SvgPicture.asset(
                    "assets/icons/plus.svg",
                    width: 30.w,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
