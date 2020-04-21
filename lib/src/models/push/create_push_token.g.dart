// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_push_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePushTokenRequest _$CreatePushTokenRequestFromJson(
    Map<String, dynamic> json) {
  return CreatePushTokenRequest(
    json['id'] as String,
    json['type'] as String,
    json['value'] as String,
    json['appName'] as String,
  );
}

Map<String, dynamic> _$CreatePushTokenRequestToJson(
        CreatePushTokenRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'value': instance.value,
      'appName': instance.appName,
    };

CreatePushTokenResult _$CreatePushTokenResultFromJson(
    Map<String, dynamic> json) {
  return CreatePushTokenResult(
    json['bool'] as bool,
    json['result'] == null
        ? null
        : CreatePushTokenResultResult.fromJson(
            json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreatePushTokenResultToJson(
        CreatePushTokenResult instance) =>
    <String, dynamic>{
      'bool': instance.success,
      'result': instance.result,
    };

CreatePushTokenResultResult _$CreatePushTokenResultResultFromJson(
    Map<String, dynamic> json) {
  return CreatePushTokenResultResult(
    json['token'] == null
        ? null
        : PushToken.fromJson(json['token'] as Map<String, dynamic>),
    json['appName'] as String,
    json['userId'] as String,
    json['enabled'] as bool,
    json['createdAt'] as String,
    json['updatedAt'] as String,
    json['_id'] as String,
  );
}

Map<String, dynamic> _$CreatePushTokenResultResultToJson(
        CreatePushTokenResultResult instance) =>
    <String, dynamic>{
      'token': instance.pushToken,
      'appName': instance.appName,
      'userId': instance.userId,
      'enabled': instance.enabled,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_id': instance.id,
    };

PushToken _$PushTokenFromJson(Map<String, dynamic> json) {
  return PushToken(
    json['apn'] as String,
    json['gcm'] as String,
  );
}

Map<String, dynamic> _$PushTokenToJson(PushToken instance) => <String, dynamic>{
      'apn': instance.apn,
      'gcm': instance.gcm,
    };
