import 'package:json_annotation/json_annotation.dart';

part 'get_command.g.dart';

@JsonSerializable()
class GetAllCommandsResult {

  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'commands')
  List<Command> commands;

  GetAllCommandsResult(this.success, this.commands);

  factory GetAllCommandsResult.fromJson(Map<String, dynamic> json) => _$GetAllCommandsResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllCommandsResultToJson(this);
}

@JsonSerializable()
class GetCommandResult {

  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'command')
  Command command;

  GetCommandResult(this.success, this.command);

  factory GetCommandResult.fromJson(Map<String, dynamic> json) => _$GetCommandResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetCommandResultToJson(this);
}

@JsonSerializable()
class Command {

  @JsonKey(name: 'command')
  String command;

  @JsonKey(name: 'params')
  String params;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'clientOnly')
  bool isClientOnly;

  Command(this.command, this.params, this.description, this.isClientOnly);

  factory Command.fromJson(Map<String, dynamic> json) => _$CommandFromJson(json);
  Map<String, dynamic> toJson() => _$CommandToJson(this);
}
