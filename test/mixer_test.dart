import 'package:mixer/mixer.dart';
import 'package:test/test.dart';

void main() {
  MixerApi api;
  setUp(() {
    api = MixerApi();
  });
  test('Get achievments.', () async {
    await api.achievements.get();
  });
}
