// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageRequest _$SendMessageRequestFromJson(Map<String, dynamic> json) {
  return SendMessageRequest(
    json['message'] == null
        ? null
        : SendMessage.fromJson(json['message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SendMessageRequestToJson(SendMessageRequest instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

SendMessage _$SendMessageFromJson(Map<String, dynamic> json) {
  return SendMessage(
    json['rid'] as String,
    json['msg'] as String,
    json['ts'] as String,
  );
}

Map<String, dynamic> _$SendMessageToJson(SendMessage instance) =>
    <String, dynamic>{
      'rid': instance.roomId,
      'msg': instance.message,
      'ts': instance.timestamp,
    };

PostMessage _$PostMessageFromJson(Map<String, dynamic> json) {
  return PostMessage(
    json['roomId'] as String,
    json['text'] as String,
  );
}

Map<String, dynamic> _$PostMessageToJson(PostMessage instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'text': instance.message,
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
