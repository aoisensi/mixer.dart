import 'package:json_annotation/json_annotation.dart';
import 'package:mixer/mixer.dart';

part 'auth.g.dart';

@JsonSerializable()
class Auth {
  final bool authenticated;
  final List<Role> roles;

  Auth({this.authenticated, this.roles});

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
