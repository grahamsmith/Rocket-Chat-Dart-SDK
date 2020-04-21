// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_channel_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetChannelHistoryResult _$GetChannelHistoryResultFromJson(
    Map<String, dynamic> json) {
  return GetChannelHistoryResult(
    json['success'] as bool,
    (json['messages'] as List)
        ?.map((e) => e == null
            ? null
            : ChannelMessage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetChannelHistoryResultToJson(
        GetChannelHistoryResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messages': instance.messages,
    };

ChannelMessage _$ChannelMessageFromJson(Map<String, dynamic> json) {
  return ChannelMessage(
    json['_id'] as String,
    json['rid'] as String,
    json['msg'] as String,
    json['ts'] as String,
    json['u'] == null
        ? null
        : ChannelMessageUser.fromJson(json['u'] as Map<String, dynamic>),
    json['_updatedAt'] as String,
  );
}

Map<String, dynamic> _$ChannelMessageToJson(ChannelMessage instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'rid': instance.rid,
      'msg': instance.message,
      'ts': instance.timestamp,
      'u': instance.user,
      '_updatedAt': instance.updatedAt,
    };

ChannelMessageUser _$ChannelMessageUserFromJson(Map<String, dynamic> json) {
  return ChannelMessageUser(
    json['_id'] as String,
    json['username'] as String,
  );
}

Map<String, dynamic> _$ChannelMessageUserToJson(ChannelMessageUser instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
    };
