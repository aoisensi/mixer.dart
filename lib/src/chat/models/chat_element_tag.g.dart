// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_element_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatElementTag _$ChatElementTagFromJson(Map<String, dynamic> json) {
  return ChatElementTag(
    type: json['type'] as String,
    username: json['username'] as String,
    id: json['id'] as int,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChatElementTagToJson(ChatElementTag instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'username': instance.username,
      'id': instance.id,
    };
