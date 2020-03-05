// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return LoginRequest(
    json['user'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
      'password': instance.password,
    };

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) {
  return LoginResult(
    json['status'] as String,
    json['data'] == null
        ? null
        : LoginResultData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginResultToJson(LoginResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

LoginResultData _$LoginResultDataFromJson(Map<String, dynamic> json) {
  return LoginResultData(
    json['me'] == null ? null : Me.fromJson(json['me'] as Map<String, dynamic>),
    json['userId'] as String,
    json['authToken'] as String,
  );
}

Map<String, dynamic> _$LoginResultDataToJson(LoginResultData instance) =>
    <String, dynamic>{
      'me': instance.me,
      'userId': instance.userId,
      'authToken': instance.authToken,
    };
