import 'package:json_annotation/json_annotation.dart';

import '../../../rocket_chat_dart_sdk.dart';

part 'get_admin_rooms.g.dart';

@JsonSerializable()
class GetAdminRoomsResult {

  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'rooms')
  List<GetRoomInfoResultRoom> rooms;

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'offset')
  int offset;

  @JsonKey(name: 'total')
  int total;

  GetAdminRoomsResult(this.success, this.rooms, this.count, this.offset, this.total)

  factory GetAdminRoomsResult.fromJson(Map<String, dynamic> json) => _$GetAdminRoomsResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetAdminRoomsResultToJson(this);
}