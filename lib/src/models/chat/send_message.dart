import 'package:json_annotation/json_annotation.dart';

part 'send_message.g.dart';

@JsonSerializable()
class SendMessageRequest {

  @JsonKey(name: 'message')
  Message message;

  SendMessageRequest(this.message);

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) => _$SendMessageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SendMessageRequestToJson(this);
}

@JsonSerializable()
class Message {

  @JsonKey(name: 'rid')
  String roomId;

  @JsonKey(name: 'msg')
  String message;

  @JsonKey(name: 'ts')
  String timestamp;

  Message(this.roomId, this.message, this.timestamp);

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

@JsonSerializable()
class SendMessageResponse {

  @JsonKey(name: 'success')
  bool success;


  SendMessageResponse(this.success);

  factory SendMessageResponse.fromJson(Map<String, dynamic> json) => _$SendMessageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SendMessageResponseToJson(this);


}