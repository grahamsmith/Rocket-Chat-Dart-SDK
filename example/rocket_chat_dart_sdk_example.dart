import 'package:rocket_chat_dart_sdk/rocket_chat_dart_sdk.dart';

void main() {
  
    var client = RocketChatClient.getInstance(serverUrl: 'YOUR SERVER URL');

    var rooms = client.restClient.getRooms();
}
