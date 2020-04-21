// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowMessageRequest _$FollowMessageRequestFromJson(Map<String, dynamic> json) {
  return FollowMessageRequest(
    json['mid'] as String,
  );
}

Map<String, dynamic> _$FollowMessageRequestToJson(
        FollowMessageRequest instance) =>
    <String, dynamic>{
      'mid': instance.messageId,
    };
