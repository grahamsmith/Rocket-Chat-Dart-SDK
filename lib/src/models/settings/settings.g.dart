// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsResult _$SettingsResultFromJson(Map<String, dynamic> json) {
  return SettingsResult(
    json['success'] as bool,
    (json['settings'] as List)
        ?.map((e) =>
            e == null ? null : Setting.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..count = json['count'] as int
    ..offset = json['offset'] as int
    ..total = json['total'] as int;
}

Map<String, dynamic> _$SettingsResultToJson(SettingsResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'settings': instance.settings,
      'count': instance.count,
      'offset': instance.offset,
      'total': instance.total,
    };

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return Setting(
    json['_id'] as String,
    json['value'],
  );
}

Map<String, dynamic> _$SettingToJson(Setting instance) => <String, dynamic>{
      '_id': instance.id,
      'value': instance.value,
    };
