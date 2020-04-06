// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return Chat(
    endpoints: (json['endpoints'] as List)?.map((e) => e as String)?.toList(),
    authkey: json['authkey'] as String,
    roles: (json['roles'] as List)
        ?.map((e) => _$enumDecodeNullable(_$RoleEnumMap, e))
        ?.toList(),
    permissions: json['permissions'] as String,
    isLoadShed: json['isLoadShed'] as bool,
  );
}

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'endpoints': instance.endpoints,
      'authkey': instance.authkey,
      'roles': instance.roles?.map((e) => _$RoleEnumMap[e])?.toList(),
      'permissions': instance.permissions,
      'isLoadShed': instance.isLoadShed,
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
