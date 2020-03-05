// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveRoomRequest _$LeaveRoomRequestFromJson(Map<String, dynamic> json) {
  return LeaveRoomRequest(
    json['roomId'] as String,
  );
}

Map<String, dynamic> _$LeaveRoomRequestToJson(LeaveRoomRequest instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
    };

LeaveRoomResult _$LeaveRoomResultFromJson(Map<String, dynamic> json) {
  return LeaveRoomResult(
    json['message'] as String,
  );
}

Map<String, dynamic> _$LeaveRoomResultToJson(LeaveRoomResult instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
