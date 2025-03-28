import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_agree_marketing_request.freezed.dart';
part 'update_agree_marketing_request.g.dart';

@freezed
class UpdateAgreeMarketingRequest with _$UpdateAgreeMarketingRequest {
  factory UpdateAgreeMarketingRequest({
    required bool agreeMarketing,
  }) = _UpdateAgreeMarketingRequest;

  factory UpdateAgreeMarketingRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAgreeMarketingRequestFromJson(json);
} 