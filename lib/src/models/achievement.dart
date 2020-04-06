import 'package:json_annotation/json_annotation.dart';

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

  
}