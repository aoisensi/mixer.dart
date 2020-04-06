import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:mixer/mixer.dart';

class MixerChat {
  final WebSocket _ws;
  final Stream _stream;
  int _methodId = 0;

  final StreamController<WelcomeEvent> onWelcomeEvent = StreamController();
  final StreamController<ChatMessage> onChatMessage = StreamController();

  MixerChat._(this._ws) : _stream = _ws.asBroadcastStream() {
    _stream.listen((body) {
      var event = json.decode(body as String) as Map<String, dynamic>;
      if (event['type'] != 'event') return;
      var data = event['data'] as Map<String, dynamic>;
      switch (event['event'] as String) {
        case 'WelcomeEvent':
          onWelcomeEvent.add(WelcomeEvent.fromJson(data));
          break;
        case 'ChatMessage':
          onChatMessage.add(ChatMessage.fromJson(data));
          break;
      }
    });
  }

  static Future<MixerChat> connect(List<String> endpoints) async {
    for (var endpoint in endpoints) {
      try {
        return MixerChat._(await WebSocket.connect(endpoint));
      } catch (e) {
        if (endpoints.last == endpoint) {
          return Future.error(e);
        }
        continue;
      }
    }
    return Future.error('endpoints is empty');
  }

  /// Authenticate as an active user in a specified channel. Arguments are channelId, userId, key. You can connect anonymously by supplying just the channnelId as an argument, but if you do this you will not be able to send messages or participate in chat. This can be useful for creating chat overlays.
  /// https://mixerdev2.azurewebsites.net/reference/chat/methods/auth
  Future<Auth> auth(
      {int channelId, int userId, String authKey, String testAccessKey}) async {
    var resp = await _method('auth',
        args: [channelId, userId, authKey, testAccessKey]);
    return Auth.fromJson(resp as Map<String, dynamic>);
  }

  Future<dynamic> _method(String method,
      {List<dynamic> args = const []}) async {
    var id = _methodId;
    var data = json.encode({
      'type': 'method',
      'method': method,
      'arguments': args,
      'id': _methodId,
    });
    _ws.add(data);
    _methodId++;
    await for (var data in _stream) {
      var reply = json.decode(data as String) as Map<String, dynamic>;
      var type = reply['type'] as String;
      if (type != 'type') continue;
      var rid = reply['id'] as int;
      if (id != rid) continue;
      var error = reply['error'] as String;
      if (error != null) {
        throw Exception(error);
      }
      return reply['data'];
    }
  }

  void close() {
    _ws.close();
  }
}
