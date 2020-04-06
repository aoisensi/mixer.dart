// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_element_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatElementImage _$ChatElementImageFromJson(Map<String, dynamic> json) {
  return ChatElementImage(
    type: json['type'] as String,
    url: json['url'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChatElementImageToJson(ChatElementImage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'url': instance.url,
    };
