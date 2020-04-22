import 'package:json_annotation/json_annotation.dart';

part 'unstar_message.g.dart';

@JsonSerializable()
class UnstarMessageRequest {

  @JsonKey(name: 'messageId')
  String messageId;

  UnstarMessageRequest(this.messageId);

  factory UnstarMessageRequest.fromJson(Map<String, dynamic> json) => _$UnstarMessageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UnstarMessageRequestToJson(this);
}