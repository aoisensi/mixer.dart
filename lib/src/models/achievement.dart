import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'achievement.g.dart';

@JsonSerializable()
class Achievement {
  final String slug;
  final String name;
  final String description;
  final int sparks;

  Achievement({
    this.slug,
    this.name,
    this.description,
    this.sparks,
  });

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);
  Map<String, dynamic> toJson() => _$AchievementToJson(this);
  static List<Achievement> fromJsonList(List<Map<String, dynamic>> json) =>
      json.map((e) => Achievement.fromJson(e)).toList();
}
