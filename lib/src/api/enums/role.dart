import 'package:json_annotation/json_annotation.dart';

enum Role {
  @JsonValue('User')
  User,
  @JsonValue('Banned')
  Banned,
  @JsonValue('Pro')
  Pro,
  @JsonValue('VerifiedPartner')
  VerifiedPartner,
  @JsonValue('Partner')
  Partner,
  @JsonValue('Subscriber')
  Subscriber,
  @JsonValue('ChannelEditor')
  ChannelEditor,
  @JsonValue('Mod')
  Mod,
  @JsonValue('GlobalMod')
  GlobalMod,
  @JsonValue('Staff')
  Staff,
  @JsonValue('Founder')
  Founder,
  @JsonValue('Owner')
  Owner,
}
