// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_element_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatElementText _$ChatElementTextFromJson(Map<String, dynamic> json) {
  return ChatElementText(
    type: json['type'] as String,
    data: json['data'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ChatElementTextToJson(ChatElementText instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'data': instance.data,
    };
