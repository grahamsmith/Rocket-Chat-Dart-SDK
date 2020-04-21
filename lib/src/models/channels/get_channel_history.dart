import '../../../rocket_chat_dart_sdk.dart';

part 'get_channel_history.g.dart';

@JsonSerializable()
class GetChannelHistoryResult {

  bool success;
  List<ChannelMessage> messages;

  GetChannelHistoryResult(this.success, this.messages);

  factory GetChannelHistoryResult.fromJson(Map<String, dynamic> json) => _$GetChannelHistoryResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetChannelHistoryResultToJson(this);
}

@JsonSerializable()
class ChannelMessage {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'rid')
  String rid;

  @JsonKey(name: 'msg')
  String message;

  @JsonKey(name: 'ts')
  String timestamp;

  @JsonKey(name: 'u')
  ChannelMessageUser user;

  @JsonKey(name: '_updatedAt')
  String updatedAt;

  ChannelMessage(this.id, this.rid, this.message, this.timestamp, this.user, this.updatedAt);

  factory ChannelMessage.fromJson(Map<String, dynamic> json) => _$ChannelMessageFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelMessageToJson(this);
}

@JsonSerializable()
class ChannelMessageUser {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'username')
  String username;

  ChannelMessageUser(this.id, this.username);

  factory ChannelMessageUser.fromJson(Map<String, dynamic> json) => _$ChannelMessageUserFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelMessageUserToJson(this);
}