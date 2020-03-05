// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogoutResult _$LogoutResultFromJson(Map<String, dynamic> json) {
  return LogoutResult(
    json['status'] as String,
    json['data'] == null
        ? null
        : LogoutResultData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LogoutResultToJson(LogoutResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

LogoutResultData _$LogoutResultDataFromJson(Map<String, dynamic> json) {
  return LogoutResultData(
    json['message'] as String,
  );
}

Map<String, dynamic> _$LogoutResultDataToJson(LogoutResultData instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
