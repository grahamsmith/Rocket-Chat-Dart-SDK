import 'package:json_annotation/json_annotation.dart';

part 'login_with_facebook.g.dart';

@JsonSerializable()
class LoginWithFacebookRequest {

  @JsonKey(name: 'serviceName')
  String serviceName = 'facebook';

  @JsonKey(name: 'accessToken')
  String accessToken;

  @JsonKey(name: 'secret')
  String secret;

  @JsonKey(name: 'expiresIn')
  int expiresIn;

  LoginWithFacebookRequest(this.accessToken, this.secret, this.expiresIn);

  factory LoginWithFacebookRequest.fromJson(Map<String, dynamic> json) => _$LoginWithFacebookRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginWithFacebookRequestToJson(this);
}