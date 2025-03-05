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
      writer: json['writer'] as String,
      writeTime: const TimestampConverter()
          .fromJson(json['writeTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BoardImplToJson(_$BoardImpl instance) =>
    <String, dynamic>{
      'boardId': instance.boardId,
      'title': instance.title,
      'content': instance.content,
      'category': instance.category,
      'image': instance.image,
      'writer': instance.writer,
      'writeTime': const TimestampConverter().toJson(instance.writeTime),
    };
