import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_email_request.freezed.dart';
part 'update_email_request.g.dart';

@freezed
class UpdateEmailRequest with _$UpdateEmailRequest {
  factory UpdateEmailRequest({
    required String email,
  }) = _UpdateEmailRequest;

  factory UpdateEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmailRequestFromJson(json);
} 