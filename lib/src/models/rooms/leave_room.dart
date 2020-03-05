import 'package:json_annotation/json_annotation.dart';

part 'leave_room.g.dart';

@JsonSerializable()
class LeaveRoomRequest {
  String roomId;

  LeaveRoomRequest(this.roomId);

  factory LeaveRoomRequest.fromJson(Map<String, dynamic> json) => _$LeaveRoomRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LeaveRoomRequestToJson(this);
}

@JsonSerializable()
class LeaveRoomResult {
  String message;

  LeaveRoomResult(this.message);

  factory LeaveRoomResult.fromJson(Map<String, dynamic> json) => _$LeaveRoomResultFromJson(json);
  Map<String, dynamic> toJson() => _$LeaveRoomResultToJson(this);
}