// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return Achievement(
    slug: json['slug'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    sparks: json['sparks'] as int,
  );
}

Map<String, dynamic> _$AchievementToJson(Achievement instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'name': instance.name,
      'description': instance.description,
      'sparks': instance.sparks,
    };
