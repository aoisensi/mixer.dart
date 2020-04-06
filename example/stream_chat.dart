import 'dart:io';
import 'package:mixer/mixer.dart';

void main() async {
  print('Enter channel ID:');
  var id = int.parse(stdin.readLineSync());
  var api = MixerApi();
  var con = await api.chats.get(id);
  var chat = await MixerChat.connect(con.endpoints);
  chat.onChatMessage.stream.listen((e) {
    print(e.userName);
    print(e.message.message.map((e) => e.text).join());
  });
  await chat.auth(channelId: id);
}
