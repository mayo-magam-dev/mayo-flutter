// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardImpl _$$BoardImplFromJson(Map<String, dynamic> json) => _$BoardImpl(
      boardId: json['boardId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      category: (json['category'] as num?)?.toInt(),
      image: json['image'] as String?,
      writer: json['writer'] as String?,
      writeTime: _$JsonConverterFromJson<Map<String, dynamic>, DateTime>(
          json['writeTime'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$$BoardImplToJson(_$BoardImpl instance) =>
    <String, dynamic>{
      'boardId': instance.boardId,
      'title': instance.title,
      'content': instance.content,
      'category': instance.category,
      'image': instance.image,
      'writer': instance.writer,
      'writeTime': _$JsonConverterToJson<Map<String, dynamic>, DateTime>(
          instance.writeTime, const TimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
