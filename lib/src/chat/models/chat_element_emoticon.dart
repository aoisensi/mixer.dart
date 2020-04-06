import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'chat_element_emoticon.g.dart';

@JsonSerializable()
class ChatElementEmoticon extends ChatElement {
  final String source;
  final String pack;
  final ChatElementEmoticonCoords coords;

  ChatElementEmoticon({
    String type,
    this.source,
    this.pack,
    this.coords,
    String text,
  }) : super(type: type, text: text);

  factory ChatElementEmoticon.fromJson(Map<String, dynamic> json) =>
      _$ChatElementEmoticonFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ChatElementEmoticonToJson(this);
}

@JsonSerializable()
class ChatElementEmoticonCoords {
  final int x;
  final int y;
  final int width;
  final int height;

  ChatElementEmoticonCoords({
    this.x,
    this.y,
    this.width,
    this.height,
  });

  factory ChatElementEmoticonCoords.fromJson(Map<String, dynamic> json) =>
      _$ChatElementEmoticonCoordsFromJson(json);
  Map<String, dynamic> toJson() => _$ChatElementEmoticonCoordsToJson(this);
}
