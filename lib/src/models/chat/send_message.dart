import 'package:json_annotation/json_annotation.dart';

part 'send_message.g.dart';

@JsonSerializable()
class SendMessageRequest {

  @JsonKey(name: 'message')
  SendMessage message;

  SendMessageRequest(this.message);

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) => _$SendMessageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SendMessageRequestToJson(this);
}

@JsonSerializable()
class SendMessage {

  @JsonKey(name: 'rid')
  String roomId;

  @JsonKey(name: 'msg')
  String message;

  @JsonKey(name: 'ts')
  String timestamp;

  SendMessage(this.roomId, this.message, this.timestamp);

  factory SendMessage.fromJson(Map<String, dynamic> json) => _$SendMessageFromJson(json);
  Map<String, dynamic> toJson() => _$SendMessageToJson(this);
}

@JsonSerializable()
class PostMessage {

  @JsonKey(name: 'roomId')
  String roomId;

  @JsonKey(name: 'text')
  String message;

  PostMessage(this.roomId, this.message);

  factory PostMessage.fromJson(Map<String, dynamic> json) => _$PostMessageFromJson(json);
  Map<String, dynamic> toJson() => _$PostMessageToJson(this);
}

@JsonSerializable()
class SendMessageResponse {

  @JsonKey(name: 'success')
  bool success;


  SendMessageResponse(this.success);

  factory SendMessageResponse.fromJson(Map<String, dynamic> json) => _$SendMessageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SendMessageResponseToJson(this);


}