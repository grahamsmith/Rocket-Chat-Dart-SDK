import 'package:json_annotation/json_annotation.dart';

part 'logout.g.dart';

@JsonSerializable()
class LogoutResult {

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'data', nullable: true)
  LogoutResultData data;

  LogoutResult(this.status, this.data);

  factory LogoutResult.fromJson(Map<String, dynamic> json) => _$LogoutResultFromJson(json);
  Map<String, dynamic> toJson() => _$LogoutResultToJson(this);
}

@JsonSerializable()
class LogoutResultData {

  @JsonKey(name: 'message')
  String message;

  LogoutResultData(this.message);

  factory LogoutResultData.fromJson(Map<String, dynamic> json) => _$LogoutResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$LogoutResultDataToJson(this);


}