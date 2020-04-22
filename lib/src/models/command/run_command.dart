import 'package:json_annotation/json_annotation.dart';

part 'run_command.g.dart';

@JsonSerializable(includeIfNull: false)
class RunCommandRequest {

  @JsonKey(name: 'command', nullable: false)
  String command;

  @JsonKey(name: 'roomId', nullable: false)
  String roomId;

  @JsonKey(name: 'params')
  String params;

  @JsonKey(name: 'tmid')
  String threadId;

  @JsonKey(name: 'triggerId')
  String triggerId;

  RunCommandRequest(this.command, this.roomId, {this.params, this.threadId, this.triggerId});

  factory RunCommandRequest.fromJson(Map<String, dynamic> json) => _$RunCommandRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RunCommandRequestToJson(this);
}
