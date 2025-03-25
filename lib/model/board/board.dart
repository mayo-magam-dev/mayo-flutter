import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';

part 'board.freezed.dart';
part 'board.g.dart';

@freezed
class Board with _$Board {
  factory Board({
    required String boardId,
    required String title,
    required String content,
    int? category,
    String? image,
    String? writer,
    @TimestampConverter() DateTime? writeTime,
  }) = _Board;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);
}
