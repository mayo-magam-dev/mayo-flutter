import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class StoreInfoBar extends StatelessWidget {
  const StoreInfoBar({
    super.key,
    required this.storeName,
    required this.storeDescription,
    required this.imageUrl,
    this.onTap,
  });

  final String storeName;
  final String storeDescription;
  final String imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final List<String> descriptionParts = storeDescription.split('\n');
    final String address = descriptionParts[0];
    final String discount =
        descriptionParts.length > 1 ? descriptionParts[1] : '';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 100.h,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                width: 80.w,
                height: 80.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            storeName,
                            style: AppTextStyle.body1Bold.copyWith(
                              letterSpacing: -0.32,
                              color: GlobalMainColor.globalPrimaryBlackColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          ' 포장·매장',
                          style: AppTextStyle.captionMedium.copyWith(
                            color: GlobalMainGrey.grey300,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      address,
                      style: AppTextStyle.captionMedium.copyWith(
                        color: GlobalMainGrey.grey300,
                        letterSpacing: -0.24,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      discount,
                      style: AppTextStyle.captionBold.copyWith(
                        color: GlobalMainColor.globalPrimaryRedColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
