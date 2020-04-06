import 'package:mixer/mixer.dart';

void main() {
  var api = MixerApi();
  api.achievements.get().then((l) {
    for (var a in l) {
      print(a.name);
      print(a.description);
    }
  });
}
