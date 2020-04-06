import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'chat_element_tag.g.dart';

@JsonSerializable()
class ChatElementTag extends ChatElement {
  final String username;
  final int id;

  ChatElementTag({
    String type,
    this.username,
    this.id,
    String text,
  }) : super(type: type, text: text);

  factory ChatElementTag.fromJson(Map<String, dynamic> json) =>
      _$ChatElementTagFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ChatElementTagToJson(this);
}
