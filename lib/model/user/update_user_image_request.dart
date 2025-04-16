import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_image_request.freezed.dart';
part 'update_user_image_request.g.dart';

@freezed
class UpdateUserImageRequest with _$UpdateUserImageRequest {
  factory UpdateUserImageRequest({
    required String file,
  }) = _UpdateUserImageRequest;

  factory UpdateUserImageRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserImageRequestFromJson(json);
} 