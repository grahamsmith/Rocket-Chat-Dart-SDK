import 'package:json_annotation/json_annotation.dart';

part 'create_push_token.g.dart';

@JsonSerializable()
class CreatePushTokenRequest {

 @JsonKey(name: 'id', nullable: true)
 String id;

 @JsonKey(name: 'type')
 String type;

 @JsonKey(name: 'value')
 String value;

 @JsonKey(name: 'appName')
 String appName;

 CreatePushTokenRequest(this.id, this.type, this.value, this.appName);

 factory CreatePushTokenRequest.fromJson(Map<String, dynamic> json) => _$CreatePushTokenRequestFromJson(json);
 Map<String, dynamic> toJson() => _$CreatePushTokenRequestToJson(this);
}

@JsonSerializable()
class CreatePushTokenResult {

 @JsonKey(name: 'bool')
 bool success;

 @JsonKey(name: 'result', nullable: true)
 CreatePushTokenResultResult result;

 CreatePushTokenResult(this.success, this.result);

 factory CreatePushTokenResult.fromJson(Map<String, dynamic> json) => _$CreatePushTokenResultFromJson(json);
 Map<String, dynamic> toJson() => _$CreatePushTokenResultToJson(this);
}

@JsonSerializable()
class CreatePushTokenResultResult {

 @JsonKey(name: 'token')
 PushToken pushToken;

 @JsonKey(name: 'appName')
 String appName;

 @JsonKey(name: 'userId')
 String userId;

 @JsonKey(name: 'enabled')
 bool enabled;

 @JsonKey(name: 'createdAt')
 String createdAt;

 @JsonKey(name: 'updatedAt')
 String updatedAt;

 @JsonKey(name: '_id')
 String id;

 CreatePushTokenResultResult(this.pushToken, this.appName, this.userId,
     this.enabled, this.createdAt, this.updatedAt, this.id);

 factory CreatePushTokenResultResult.fromJson(Map<String, dynamic> json) => _$CreatePushTokenResultResultFromJson(json);
 Map<String, dynamic> toJson() => _$CreatePushTokenResultResultToJson(this);
}

@JsonSerializable()
class PushToken {

 @JsonKey(name: 'apn', nullable: true)
 String apn;

 @JsonKey(name: 'gcm', nullable: true)
 String gcm;

 PushToken(this.apn, this.gcm);

 factory PushToken.fromJson(Map<String, dynamic> json) => _$PushTokenFromJson(json);
 Map<String, dynamic> toJson() => _$PushTokenToJson(this);
}