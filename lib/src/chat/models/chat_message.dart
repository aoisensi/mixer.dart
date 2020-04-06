import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';
import 'package:mixer/src/api/enums/role.dart';

part 'chat_message.g.dart';

@JsonSerializable()
class ChatMessage {
  final int channel;
  final String id;
  final String userName;
  final int userId;
  final List<Role> userRoles;
  final int userLevel;
  final String userAvatar;
  final ChatMessageMessage message;

  ChatMessage({
    this.channel,
    this.id,
    this.userName,
    this.userId,
    this.userRoles,
    this.userLevel,
    this.userAvatar,
    this.message,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);
}

@JsonSerializable()
class ChatMessageMessage {
  final List<ChatElement> message;
  // I don't know meta object.

  ChatMessageMessage({this.message});

  factory ChatMessageMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageMessageFromJson(json);
  Map<String, dynamic> toJson() => _$ChatMessageMessageToJson(this);
}
