import 'package:http/http.dart' as http;

import 'package:mixer/mixer.dart';

class MixerApi {
  final String _rootURL = 'https://mixer.com/api/';

  ServiceAchievements get achievements => ServiceAchievements(this);
  ServiceChats get chats => ServiceChats(this);

  Future<http.Response> get(String endpoint) {
    return http.get(_rootURL + endpoint);
  }
}
