import 'package:logger/logger.dart';
import 'package:rocket_chat_dart_sdk/rocket_chat_dart_sdk.dart';
import 'package:rocket_chat_dart_sdk/src/models/authentication/login.dart';
import 'package:test/test.dart';

final logger = Logger();

void main() {
  test('testLogin', () async {

    var client = RocketChatClient.getInstance(serverUrl: '');

    var loginResult = await client.restClient.login(LoginRequest('admin', ''));

    var me = loginResult.data.me;

  });

  test('send messages into chat', () async {

    var client = RocketChatClient.getInstance(serverUrl: '');

    await client.restClient.login(LoginRequest('admin', ''));
  });
}
