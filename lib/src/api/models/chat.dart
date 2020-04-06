import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'chat.g.dart';

@JsonSerializable()
class Chat {
  final List<String> endpoints;
  final String authkey;
  final List<Role> roles;
  final String permissions;
  @JsonKey(name: 'isLoadShed')
  final bool isLoadShed;

  Chat({
    this.endpoints,
    this.authkey,
    this.roles,
    this.permissions,
    this.isLoadShed,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
