import 'package:json_annotation/json_annotation.dart';

part 'delete_message.g.dart';

@JsonSerializable()
class DeleteMessageRequest {

  @JsonKey(name: 'roomId')
  String roomId;

  @JsonKey(name: 'msgId')
  String messageId;

  @JsonKey(name: 'asUser')
  bool asUser;

  DeleteMessageRequest(this.roomId, this.messageId, this.asUser);

  factory DeleteMessageRequest.fromJson(Map<String, dynamic> json) => _$DeleteMessageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$DeleteMessageRequestToJson(this);
}

@JsonSerializable()
class DeleteMessageResult {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'ts')
  String timestamp;

  @JsonKey(name: 'success')
  bool success;

  DeleteMessageResult(this.id, this.timestamp, this.success);

  factory DeleteMessageResult.fromJson(Map<String, dynamic> json) => _$DeleteMessageResultFromJson(json);
  Map<String, dynamic> toJson() => _$DeleteMessageResultToJson(this);
}