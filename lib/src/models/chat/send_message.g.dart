// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageRequest _$SendMessageRequestFromJson(Map<String, dynamic> json) {
  return SendMessageRequest(
    json['message'] == null
        ? null
        : Message.fromJson(json['message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SendMessageRequestToJson(SendMessageRequest instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    json['rid'] as String,
    json['msg'] as String,
    json['ts'] as String,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'rid': instance.roomId,
      'msg': instance.message,
      'ts': instance.timestamp,
    };

SendMessageResponse _$SendMessageResponseFromJson(Map<String, dynamic> json) {
  return SendMessageResponse(
    json['success'] as bool,
  );
}

Map<String, dynamic> _$SendMessageResponseToJson(
        SendMessageResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
    };
