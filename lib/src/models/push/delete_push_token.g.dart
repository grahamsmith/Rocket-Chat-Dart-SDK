// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_push_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeletePushTokenRequest _$DeletePushTokenRequestFromJson(
    Map<String, dynamic> json) {
  return DeletePushTokenRequest(
    json['id'] as String,
    json['type'] as String,
    json['value'] as String,
    json['appName'] as String,
  );
}

Map<String, dynamic> _$DeletePushTokenRequestToJson(
        DeletePushTokenRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'value': instance.value,
      'appName': instance.appName,
    };

DeletePushTokenResult _$DeletePushTokenResultFromJson(
    Map<String, dynamic> json) {
  return DeletePushTokenResult(
    json['bool'] as bool,
  );
}

Map<String, dynamic> _$DeletePushTokenResultToJson(
        DeletePushTokenResult instance) =>
    <String, dynamic>{
      'bool': instance.success,
    };
