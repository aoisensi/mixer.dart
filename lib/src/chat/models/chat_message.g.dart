// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return ChatMessage(
    channel: json['channel'] as int,
    id: json['id'] as String,
    userName: json['user_name'] as String,
    userId: json['user_id'] as int,
    userRoles: (json['user_roles'] as List)
        ?.map((e) => _$enumDecodeNullable(_$RoleEnumMap, e))
        ?.toList(),
    userLevel: json['user_level'] as int,
    userAvatar: json['user_avatar'] as String,
    message: json['message'] == null
        ? null
        : ChatMessageMessage.fromJson(json['message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'id': instance.id,
      'user_name': instance.userName,
      'user_id': instance.userId,
      'user_roles': instance.userRoles?.map((e) => _$RoleEnumMap[e])?.toList(),
      'user_level': instance.userLevel,
      'user_avatar': instance.userAvatar,
      'message': instance.message,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$RoleEnumMap = {
  Role.User: 'User',
  Role.Banned: 'Banned',
  Role.Pro: 'Pro',
  Role.VerifiedPartner: 'VerifiedPartner',
  Role.Partner: 'Partner',
  Role.Subscriber: 'Subscriber',
  Role.ChannelEditor: 'ChannelEditor',
  Role.Mod: 'Mod',
  Role.GlobalMod: 'GlobalMod',
  Role.Staff: 'Staff',
  Role.Founder: 'Founder',
  Role.Owner: 'Owner',
};

ChatMessageMessage _$ChatMessageMessageFromJson(Map<String, dynamic> json) {
  return ChatMessageMessage(
    message: (json['message'] as List)
        ?.map((e) =>
            e == null ? null : ChatElement.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChatMessageMessageToJson(ChatMessageMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
