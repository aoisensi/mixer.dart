import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'chat_element_text.g.dart';

@JsonSerializable()
class ChatElementText extends ChatElement {
  final String data;

  ChatElementText({
    String type,
    this.data,
    String text,
  }) : super(type: type, text: text);

  factory ChatElementText.fromJson(Map<String, dynamic> json) =>
      _$ChatElementTextFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ChatElementTextToJson(this);
}
