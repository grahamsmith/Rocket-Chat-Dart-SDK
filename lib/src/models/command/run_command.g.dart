// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RunCommandRequest _$RunCommandRequestFromJson(Map<String, dynamic> json) {
  return RunCommandRequest(
    json['command'] as String,
    json['roomId'] as String,
    params: json['params'] as String,
    threadId: json['tmid'] as String,
    triggerId: json['triggerId'] as String,
  );
}

Map<String, dynamic> _$RunCommandRequestToJson(RunCommandRequest instance) {
  final val = <String, dynamic>{
    'command': instance.command,
    'roomId': instance.roomId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('params', instance.params);
  writeNotNull('tmid', instance.threadId);
  writeNotNull('triggerId', instance.triggerId);
  return val;
}
