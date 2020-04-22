import 'package:json_annotation/json_annotation.dart';

part 'rocket_chat_response.g.dart';

@JsonSerializable()
class RocketChatResponse {

  @JsonKey(name: 'success')
  bool success;

  RocketChatResponse(this.success);

  factory RocketChatResponse.fromJson(Map<String, dynamic> json) => _$RocketChatResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RocketChatResponseToJson(this);
}