import 'package:http/http.dart' as http;

import 'package:mixer/mixer.dart';

class MixerApi {
  final String _rootURL = 'https://mixer.com/api/';

  Achievements get achievements => Achievements(this);

  Future<http.Response> get(String endpoint) {
    return http.get(_rootURL + endpoint);
  }
}
