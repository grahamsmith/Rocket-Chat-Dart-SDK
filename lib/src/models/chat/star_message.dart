import 'package:json_annotation/json_annotation.dart';

part 'star_message.g.dart';

@JsonSerializable()
class StarMessageRequest {

  @JsonKey(name: 'messageId')
  String messageId;

  StarMessageRequest(this.messageId);

  factory StarMessageRequest.fromJson(Map<String, dynamic> json) => _$StarMessageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$StarMessageRequestToJson(this);
}