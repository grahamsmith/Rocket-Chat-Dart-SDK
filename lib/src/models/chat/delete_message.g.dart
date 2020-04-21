// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteMessageRequest _$DeleteMessageRequestFromJson(Map<String, dynamic> json) {
  return DeleteMessageRequest(
    json['roomId'] as String,
    json['msgId'] as String,
    json['asUser'] as bool,
  );
}

Map<String, dynamic> _$DeleteMessageRequestToJson(
        DeleteMessageRequest instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'msgId': instance.messageId,
      'asUser': instance.asUser,
    };

DeleteMessageResult _$DeleteMessageResultFromJson(Map<String, dynamic> json) {
  return DeleteMessageResult(
    json['_id'] as String,
    json['ts'] as String,
    json['success'] as bool,
  );
}

Map<String, dynamic> _$DeleteMessageResultToJson(
        DeleteMessageResult instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'ts': instance.timestamp,
      'success': instance.success,
    };
