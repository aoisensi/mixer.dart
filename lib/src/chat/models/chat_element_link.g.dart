// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_element_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatElementLink _$ChatElementLinkFromJson(Map<String, dynamic> json) {
  return ChatElementLink(
    type: json['type'] as String,
    url: json['url'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChatElementLinkToJson(ChatElementLink instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'url': instance.url,
    };
