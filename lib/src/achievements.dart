import 'dart:convert';

import 'package:mixer/mixer.dart';

class Achievements {
  final MixerApi _client;

  Achievements(MixerApi client) : _client = client;

  /// Gets a list of all known achievements.
  /// https://dev.mixer.com/rest/index.html#achievements_get
  Future<List<Achievement>> get() async {
    var resp = await _client.get('v1/achievements');
    if (resp.statusCode != 200) {
      return Future.error('error');
    }
    return (json.decode(resp.body) as List)
        .map((e) => Achievement.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
