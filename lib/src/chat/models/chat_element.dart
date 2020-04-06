import 'package:mixer/mixer.dart';

abstract class ChatElement {
  final String type;
  final String text;

  ChatElement({this.type, this.text});

  factory ChatElement.fromJson(Map<String, dynamic> json) {
    var type = json['type'] as String;
    switch (type) {
      case 'text':
        return ChatElementText.fromJson(json);
      case 'emoticon':
        return ChatElementEmoticon.fromJson(json);
      case 'link':
        return ChatElementLink.fromJson(json);
      case 'image':
        return ChatElementImage.fromJson(json);
      case 'tag':
        return ChatElementTag.fromJson(json);
    }
    throw Exception('unknown chat element type: $type\n' + json.toString());
  }
  Map<String, dynamic> toJson();
}
