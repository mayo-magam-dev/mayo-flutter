import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_nickname_request.freezed.dart';
part 'update_nickname_request.g.dart';

@freezed
class UpdateNickNameRequest with _$UpdateNickNameRequest {
  factory UpdateNickNameRequest({
    required String nickName,
  }) = _UpdateNickNameRequest;

  factory UpdateNickNameRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateNickNameRequestFromJson(json);
} 