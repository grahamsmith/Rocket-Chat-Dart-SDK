import 'package:json_annotation/json_annotation.dart';

part 'get_room_info.g.dart';

@JsonSerializable()
class GetRoomInfoResult {

  @JsonKey(name: "success")
  bool success;

  @JsonKey(name: "room")
  GetRoomInfoResultRoom room;

  GetRoomInfoResult(this.success, this.room);

  factory GetRoomInfoResult.fromJson(Map<String, dynamic> json) => _$GetRoomInfoResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetRoomInfoResultToJson(this);
}

@JsonSerializable()
class GetRoomInfoResultRoom {

  @JsonKey(name: '_id')
  String roomId;

  @JsonKey(name: 't')
  String roomType;

  @JsonKey(name: '_updatedAt')
  String updatedAt;

  @JsonKey(name: 'name', nullable: true)
  String roomName;

  @JsonKey(name: 'usernames', nullable: true)
  List<String> users;

  @JsonKey(name: 'ts', nullable: true) //todo- what is this?
  String ts;

  @JsonKey(name: 'lm', nullable: true) //todo- what is this?
  String lm;

  @JsonKey(name: 'msgs', nullable: true)
  int messageCount;

  @JsonKey(name: 'default', nullable: true) //todo - what is this?
  bool roomDefault;

  GetRoomInfoResultRoom(this.roomId, this.roomType, this.updatedAt,
      this.roomName, this.users, this.ts, this.lm, this.messageCount,
      this.roomDefault);

  factory GetRoomInfoResultRoom.fromJson(Map<String, dynamic> json) => _$GetRoomInfoResultRoomFromJson(json);
  Map<String, dynamic> toJson() => _$GetRoomInfoResultRoomToJson(this);
}