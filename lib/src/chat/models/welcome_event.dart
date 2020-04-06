import 'package:json_annotation/json_annotation.dart';

part 'welcome_event.g.dart';

@JsonSerializable()
class WelcomeEvent {
  final String server;

  WelcomeEvent({this.server});

  factory WelcomeEvent.fromJson(Map<String, dynamic> json) =>
      _$WelcomeEventFromJson(json);
  Map<String, dynamic> toJson() => _$WelcomeEventToJson(this);
}
