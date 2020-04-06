// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_element_emoticon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatElementEmoticon _$ChatElementEmoticonFromJson(Map<String, dynamic> json) {
  return ChatElementEmoticon(
    type: json['type'] as String,
    source: json['source'] as String,
    pack: json['pack'] as String,
    coords: json['coords'] == null
        ? null
        : ChatElementEmoticonCoords.fromJson(
            json['coords'] as Map<String, dynamic>),
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChatElementEmoticonToJson(
        ChatElementEmoticon instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'source': instance.source,
      'pack': instance.pack,
      'coords': instance.coords,
    };

ChatElementEmoticonCoords _$ChatElementEmoticonCoordsFromJson(
    Map<String, dynamic> json) {
  return ChatElementEmoticonCoords(
    x: json['x'] as int,
    y: json['y'] as int,
    width: json['width'] as int,
    height: json['height'] as int,
  );
}

Map<String, dynamic> _$ChatElementEmoticonCoordsToJson(
        ChatElementEmoticonCoords instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };
