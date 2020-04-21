// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMessageResult _$GetMessageResultFromJson(Map<String, dynamic> json) {
  return GetMessageResult(
    json['_id'] as String,
    json['roomId'] as String,
    json['msg'] as String,
    json['ts'] as String,
    json['u'] == null
        ? null
        : GetMessageUserResult.fromJson(json['u'] as Map<String, dynamic>),
    json['success'] as bool,
  );
}

Map<String, dynamic> _$GetMessageResultToJson(GetMessageResult instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'roomId': instance.roomId,
      'msg': instance.message,
      'ts': instance.timestamp,
      'u': instance.user,
      'success': instance.success,
    };

GetMessageUserResult _$GetMessageUserResultFromJson(Map<String, dynamic> json) {
  return GetMessageUserResult(
    json['_id'] as String,
    json['username'] as String,
  );
}

Map<String, dynamic> _$GetMessageUserResultToJson(
        GetMessageUserResult instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
    };
