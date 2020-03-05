// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRoomsResult _$GetRoomsResultFromJson(Map<String, dynamic> json) {
  return GetRoomsResult(
    json['success'] as bool,
    (json['remove'] as List)
        ?.map((e) => e == null
            ? null
            : GetRoomsResultRoom.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['update'] as List)
        ?.map((e) => e == null
            ? null
            : GetRoomsResultRoom.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetRoomsResultToJson(GetRoomsResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'update': instance.update,
      'remove': instance.remove,
    };

GetRoomsResultRoom _$GetRoomsResultRoomFromJson(Map<String, dynamic> json) {
  return GetRoomsResultRoom(
    json['_id'] as String,
    json['t'] as String,
    json['_updatedAt'] as String,
    json['name'] as String,
    (json['users'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$GetRoomsResultRoomToJson(GetRoomsResultRoom instance) =>
    <String, dynamic>{
      '_id': instance.roomId,
      't': instance.roomType,
      '_updatedAt': instance.updatedAt,
      'name': instance.roomName,
      'users': instance.users,
    };
