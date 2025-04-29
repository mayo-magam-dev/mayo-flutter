import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_first_item.freezed.dart';
part 'read_first_item.g.dart';

@freezed
class ReadFirstItem with _$ReadFirstItem {
  factory ReadFirstItem({
    required String itemName,
    required int itemQuantity,
  }) = _ReadFirstItem;

  factory ReadFirstItem.fromJson(Map<String, dynamic> json) =>
      _$ReadFirstItemFromJson(json);
}
