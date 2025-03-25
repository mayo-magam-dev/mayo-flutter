import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter
    implements JsonConverter<DateTime, Map<String, dynamic>> {
  const TimestampConverter();

  @override
  DateTime fromJson(Map<String, dynamic> json) {
    final seconds = json['seconds'] as int;
    final nanos = json['nanos'] as int;
    return DateTime.fromMillisecondsSinceEpoch(seconds * 1000, isUtc: true)
        .add(Duration(microseconds: (nanos / 1000).round()));
  }

  @override
  Map<String, dynamic> toJson(DateTime object) {
    final milliseconds = object.millisecondsSinceEpoch;
    final seconds = milliseconds ~/ 1000;
    final nanos = (milliseconds % 1000) * 1000000;
    return {'seconds': seconds, 'nanos': nanos};
  }
}
