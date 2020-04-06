import 'dart:convert';

import 'package:mixer/mixer.dart';

class ServiceChats {
  final MixerApi _client;

  ServiceChats(MixerApi client) : _client = client;

  /// Prepares the user to join a chat channel. It returns the channel's chatroom settings, available chat servers, and an authentication key that the user (if authenticated) should use to authenticate with the chat servers over websockets.
  /// If you wish to connect to chat as an authenticated user, you must have the chat:connect permission.
  /// https://dev.mixer.com/rest/index.html#chats__channelId__get
  Future<Chat> get(int channelId) async {
    var resp = await _client.get('v1/chats/$channelId');
    if (resp.statusCode != 200) {
      return Future.error('error');
    }
    return Chat.fromJson(json.decode(resp.body) as Map<String, dynamic>);
  }
}
