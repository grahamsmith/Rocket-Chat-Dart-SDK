import 'package:json_annotation/json_annotation.dart';

part 'follow_message.g.dart';

@JsonSerializable()
class FollowMessageRequest {

  @JsonKey(name: 'mid')
  String messageId;

  FollowMessageRequest(this.messageId);

  factory FollowMessageRequest.fromJson(Map<String, dynamic> json) => _$FollowMessageRequestFromJson(json);
  Map<String, dynamic> toJson() => _$FollowMessageRequestToJson(this);
}