// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCommandsResult _$GetAllCommandsResultFromJson(Map<String, dynamic> json) {
  return GetAllCommandsResult(
    json['success'] as bool,
    (json['commands'] as List)
        ?.map((e) =>
            e == null ? null : Command.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetAllCommandsResultToJson(
        GetAllCommandsResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'commands': instance.commands,
    };

GetCommandResult _$GetCommandResultFromJson(Map<String, dynamic> json) {
  return GetCommandResult(
    json['success'] as bool,
    json['command'] == null
        ? null
        : Command.fromJson(json['command'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetCommandResultToJson(GetCommandResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'command': instance.command,
    };

Command _$CommandFromJson(Map<String, dynamic> json) {
  return Command(
    json['command'] as String,
    json['params'] as String,
    json['description'] as String,
    json['clientOnly'] as bool,
  );
}

Map<String, dynamic> _$CommandToJson(Command instance) => <String, dynamic>{
      'command': instance.command,
      'params': instance.params,
      'description': instance.description,
      'clientOnly': instance.isClientOnly,
    };
