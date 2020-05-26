import 'package:json_annotation/json_annotation.dart';

part 'login_with_twitter.g.dart';

@JsonSerializable()
class LoginWithTwitterRequest {

  @JsonKey(name: 'serviceName')
  String serviceName = 'twitter';

  @JsonKey(name: 'accessToken')
  String accessToken;

  @JsonKey(name: 'accessTokenSecret')
  String accessTokenSecret;

  @JsonKey(name: 'appSecret')
  String appSecret;

  @JsonKey(name: 'appId')
  String appId;

  @JsonKey(name: 'expiresIn')
  int expiresIn;

  LoginWithTwitterRequest(this.accessToken, this.accessTokenSecret, this.appSecret, this.appId, this.expiresIn);

  factory LoginWithTwitterRequest.fromJson(Map<String, dynamic> json) => _$LoginWithTwitterRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginWithTwitterRequestToJson(this);
}