// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_discussion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDiscussionRequest _$CreateDiscussionRequestFromJson(
    Map<String, dynamic> json) {
  return CreateDiscussionRequest(
    json['prid'] as String,
    json['t_name'] as String,
    json['pmid'] as String,
    (json['users'] as List)?.map((e) => e as String)?.toList(),
    json['reply'] as String,
  );
}

Map<String, dynamic> _$CreateDiscussionRequestToJson(
        CreateDiscussionRequest instance) =>
    <String, dynamic>{
      'prid': instance.roomId,
      't_name': instance.discussionName,
      'users': instance.users,
      'pmid': instance.parentMessageId,
      'reply': instance.reply,
    };

CreateDiscussionResult _$CreateDiscussionResultFromJson(
    Map<String, dynamic> json) {
  return CreateDiscussionResult(
    json['message'] as String,
  );
}

Map<String, dynamic> _$CreateDiscussionResultToJson(
        CreateDiscussionResult instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
