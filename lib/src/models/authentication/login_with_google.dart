import 'package:json_annotation/json_annotation.dart';

part 'login_with_google.g.dart';

@JsonSerializable()
class LoginWithGoogleRequest {

  @JsonKey(name: 'serviceName')
  String serviceName = 'google';

  @JsonKey(name: 'accessToken')
  String accessToken;

  @JsonKey(name: 'idToken')
  String idToken;

  @JsonKey(name: 'expiresIn')
  int expiresIn;

  @JsonKey(name: 'scope', includeIfNull: false)
  String scope;

  LoginWithGoogleRequest(this.accessToken, this.idToken, this.expiresIn, {this.scope});

  factory LoginWithGoogleRequest.fromJson(Map<String, dynamic> json) => _$LoginWithGoogleRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginWithGoogleRequestToJson(this);
}