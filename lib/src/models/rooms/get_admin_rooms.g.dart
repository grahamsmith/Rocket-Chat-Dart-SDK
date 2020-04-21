// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_admin_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAdminRoomsResult _$GetAdminRoomsResultFromJson(Map<String, dynamic> json) {
  return GetAdminRoomsResult(
    json['success'] as bool,
    (json['rooms'] as List)
        ?.map((e) => e == null
            ? null
            : GetRoomInfoResultRoom.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['count'] as int,
    json['offset'] as int,
    json['total'] as int,
  );
}

Map<String, dynamic> _$GetAdminRoomsResultToJson(
        GetAdminRoomsResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'rooms': instance.rooms,
      'count': instance.count,
      'offset': instance.offset,
      'total': instance.total,
    };
