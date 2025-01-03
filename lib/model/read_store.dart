import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_store.freezed.dart';
part 'read_store.g.dart';

@freezed
class ReadStore with _$ReadStore {
  factory ReadStore(
      {required String id,
      required String storeName,
      required bool openState,
      required String address,
      required String storeImage,
      required String openTime,
      required String closeTime,
      required String saleStart,
      required String saleEnd,
      required String storeDescription,
      required String storeNumber,
      required String storeMapUrl,
      required String originInfo,
      required String additionalComment,
      required int storeCategory,
      required int storeSellingType}) = _ReadStore;

  factory ReadStore.fromJson(Map<String, dynamic> json) =>
      _$ReadStoreFromJson(json);
}
