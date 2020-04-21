import 'package:json_annotation/json_annotation.dart';

part 'get_message.g.dart';

@JsonSerializable()
class GetMessageResult {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'roomId')
  String roomId;

  @JsonKey(name: 'msg')
  String message;

  @JsonKey(name: 'ts')
  String timestamp;

  @JsonKey(name: 'u')
  GetMessageUserResult user;

  @JsonKey(name: 'success')
  bool success;

  GetMessageResult(this.id, this.roomId, this.message, this.timestamp, this.user, this.success);

  factory GetMessageResult.fromJson(Map<String, dynamic> json) => _$GetMessageResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetMessageResultToJson(this);
}

@JsonSerializable()
class GetMessageUserResult {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'username')
  String username;

  GetMessageUserResult(this.id, this.username);

  factory GetMessageUserResult.fromJson(Map<String, dynamic> json) => _$GetMessageUserResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetMessageUserResultToJson(this);
}
