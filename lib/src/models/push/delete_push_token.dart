import 'package:json_annotation/json_annotation.dart';

part 'delete_push_token.g.dart';

@JsonSerializable()
class DeletePushTokenRequest {

 @JsonKey(name: 'id', nullable: true)
 String id;

 @JsonKey(name: 'type')
 String type;

 @JsonKey(name: 'value')
 String value;

 @JsonKey(name: 'appName')
 String appName;

 DeletePushTokenRequest(this.id, this.type, this.value, this.appName);

 factory DeletePushTokenRequest.fromJson(Map<String, dynamic> json) => _$DeletePushTokenRequestFromJson(json);
 Map<String, dynamic> toJson() => _$DeletePushTokenRequestToJson(this);
}

@JsonSerializable()
class DeletePushTokenResult {

 @JsonKey(name: 'bool')
 bool success;

 DeletePushTokenResult(this.success);

 factory DeletePushTokenResult.fromJson(Map<String, dynamic> json) => _$DeletePushTokenResultFromJson(json);
 Map<String, dynamic> toJson() => _$DeletePushTokenResultToJson(this);
}