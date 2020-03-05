import 'package:json_annotation/json_annotation.dart';

part 'get_rooms.g.dart';

@JsonSerializable()
class GetRoomsResult {

  bool success;
  List<GetRoomsResultRoom> update;
  List<GetRoomsResultRoom> remove;

  GetRoomsResult(this.success, this.remove, this.update);

  factory GetRoomsResult.fromJson(Map<String, dynamic> json) => _$GetRoomsResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetRoomsResultToJson(this);
}

@JsonSerializable()
class GetRoomsResultRoom {

  @JsonKey(name: '_id')
  String roomId;

  @JsonKey(name: 't')
  String roomType;

  @JsonKey(name: '_updatedAt')
  String updatedAt;

  @JsonKey(name: 'name', nullable: true)
  String roomName;

  @JsonKey(name: 'users', nullable: true)
  List<String> users;


  GetRoomsResultRoom(this.roomId, this.roomType, this.updatedAt, this.roomName,
      this.users);

  factory GetRoomsResultRoom.fromJson(Map<String, dynamic> json) => _$GetRoomsResultRoomFromJson(json);
  Map<String, dynamic> toJson() => _$GetRoomsResultRoomToJson(this);
}