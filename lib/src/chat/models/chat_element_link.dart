import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'chat_element_link.g.dart';

@JsonSerializable()
class ChatElementLink extends ChatElement {
  final String url;

  ChatElementLink({
    String type,
    this.url,
    String text,
  }) : super(type: type, text: text);

  factory ChatElementLink.fromJson(Map<String, dynamic> json) =>
      _$ChatElementLinkFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ChatElementLinkToJson(this);
}
