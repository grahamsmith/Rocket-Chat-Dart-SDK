// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_room_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRoomInfoResult _$GetRoomInfoResultFromJson(Map<String, dynamic> json) {
  return GetRoomInfoResult(
    json['success'] as bool,
    json['room'] == null
        ? null
        : GetRoomInfoResultRoom.fromJson(json['room'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetRoomInfoResultToJson(GetRoomInfoResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'room': instance.room,
    };

GetRoomInfoResultRoom _$GetRoomInfoResultRoomFromJson(
    Map<String, dynamic> json) {
  return GetRoomInfoResultRoom(
    json['_id'] as String,
    json['t'] as String,
    json['_updatedAt'] as String,
    json['name'] as String,
    (json['usernames'] as List)?.map((e) => e as String)?.toList(),
    json['ts'] as String,
    json['lm'] as String,
    json['msgs'] as int,
    json['default'] as bool,
  );
}

Map<String, dynamic> _$GetRoomInfoResultRoomToJson(
        GetRoomInfoResultRoom instance) =>
    <String, dynamic>{
      '_id': instance.roomId,
      't': instance.roomType,
      '_updatedAt': instance.updatedAt,
      'name': instance.roomName,
      'usernames': instance.users,
      'ts': instance.ts,
      'lm': instance.lm,
      'msgs': instance.messageCount,
      'default': instance.roomDefault,
    };
