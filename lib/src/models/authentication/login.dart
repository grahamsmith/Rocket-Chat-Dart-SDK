import 'package:json_annotation/json_annotation.dart';

import 'me.dart';

part 'login.g.dart';

@JsonSerializable()
class LoginRequest {

  @JsonKey(name: 'user')
  String user;

  @JsonKey(name: 'password')
  String password;

  LoginRequest(this.user, this.password);

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

@JsonSerializable()
class LoginResult {

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'data', nullable: true)
  LoginResultData data;

  LoginResult(this.status, this.data);

  factory LoginResult.fromJson(Map<String, dynamic> json) => _$LoginResultFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResultToJson(this);
}

@JsonSerializable()
class LoginResultData {

  @JsonKey(name: 'me')
  Me me;

  @JsonKey(name: 'userId')
  String userId;

  @JsonKey(name: 'authToken')
  String authToken;

  LoginResultData(this.me, this.userId, this.authToken);

  factory LoginResultData.fromJson(Map<String, dynamic> json) => _$LoginResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResultDataToJson(this);


}