import 'package:flutter/material.dart';
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

    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: storeName,
                          style: AppTextStyle.body1Bold.copyWith(
                            color: GlobalMainColor.globalPrimaryBlackColor,
                          ),
                          children: [
                            TextSpan(
                              text: ' 포장·매장',
                              style: AppTextStyle.captionMedium.copyWith(
                                color: GlobalMainGrey.grey300,
                              ),
                            ),
                          ],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        address,
                        style: AppTextStyle.captionMedium.copyWith(
                          color: GlobalMainGrey.grey300,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        discount,
                        style: AppTextStyle.captionBold.copyWith(
                          color: GlobalMainColor.globalPrimaryRedColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          // ✅ 내부 포함
          height: 1,
          color: GlobalMainGrey.grey200,
          thickness: 1,
        ),
      ],
    );
  }
}
