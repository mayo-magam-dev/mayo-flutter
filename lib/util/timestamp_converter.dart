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

class CreatedAtTimestampConverter implements JsonConverter<DateTime, List<dynamic>> {
  const CreatedAtTimestampConverter();

  @override
  DateTime fromJson(List<dynamic> json) {
    return DateTime(
      json[0] as int, // year
      json[1] as int, // month
      json[2] as int, // day
      json[3] as int, // hour
      json[4] as int, // minute
      json[5] as int, // second
      json[6] ~/ 1000000, // millisecond (나노초 → 밀리초)
    );
  }

  @override
  List<dynamic> toJson(DateTime object) {
    return [
      object.year,
      object.month,
      object.day,
      object.hour,
      object.minute,
      object.second,
      object.millisecond * 1000000, // 밀리초 → 나노초
    ];
  }
}

class PickUpTimestampConverter implements JsonConverter<DateTime, List<dynamic>> {
  const PickUpTimestampConverter();

  @override
  DateTime fromJson(List<dynamic> json) {
    return DateTime(
      json[0] as int, // year
      json[1] as int, // month
      json[2] as int, // day
      json[3] as int, // hour
      json[4] as int, // minute
    );
  }

  @override
  List<dynamic> toJson(DateTime object) {
    return [
      object.year,
      object.month,
      object.day,
      object.hour,
      object.minute,
    ];
  }
}