import 'package:json_annotation/json_annotation.dart';

part 'create_discussion.g.dart';

@JsonSerializable()
class CreateDiscussionRequest {

  @JsonKey(name: 'prid')
  String roomId;

  @JsonKey(name: 't_name')
  String discussionName;

  @JsonKey(name: 'users', nullable: true)
  List<String> users;

  @JsonKey(name: 'pmid', nullable: true)
  String parentMessageId;

  @JsonKey(name: 'reply', nullable: true)
  String reply;

  CreateDiscussionRequest(this.roomId, this.discussionName, this.parentMessageId, this.users, this.reply);

  factory CreateDiscussionRequest.fromJson(Map<String, dynamic> json) => _$CreateDiscussionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateDiscussionRequestToJson(this);
}

@JsonSerializable()
class CreateDiscussionResult {
  String message;

  CreateDiscussionResult(this.message);

  factory CreateDiscussionResult.fromJson(Map<String, dynamic> json) => _$CreateDiscussionResultFromJson(json);
  Map<String, dynamic> toJson() => _$CreateDiscussionResultToJson(this);
}