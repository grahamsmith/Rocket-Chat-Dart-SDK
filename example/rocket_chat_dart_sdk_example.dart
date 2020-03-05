import 'package:rocket_chat_dart_sdk/rocket_chat_dart_sdk.dart';

void main() {
  
    var client = RocketChatClient.instance('example');

    client.restClient.getRooms();
}
