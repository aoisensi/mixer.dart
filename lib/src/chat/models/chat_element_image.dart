import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'chat_element_image.g.dart';

@JsonSerializable()
class ChatElementImage extends ChatElement {
  final String url;

  ChatElementImage({
    String type,
    this.url,
    String text,
  }) : super(type: type, text: text);

  factory ChatElementImage.fromJson(Map<String, dynamic> json) =>
      _$ChatElementImageFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ChatElementImageToJson(this);
}
