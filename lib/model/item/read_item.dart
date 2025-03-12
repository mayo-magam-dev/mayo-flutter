import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_item.freezed.dart';
part 'read_item.g.dart';

@freezed
class ReadItem with _$ReadItem {
  factory ReadItem({
    required String itemId,
    required String itemName,
    required String itemDescription,
    required int originalPrice,
    required double salePercent,
    required int itemQuantity,
    required bool itemOnSale,
    required String itemImage,
    required double salePrice,
    int? cookingTime,
    String? additionalInformation,
  }) = _ReadItem;

  factory ReadItem.fromJson(Map<String, dynamic> json) =>
      _$ReadItemFromJson(json);
}
