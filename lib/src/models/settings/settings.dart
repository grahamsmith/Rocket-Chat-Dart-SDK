import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

@JsonSerializable()
class SettingsResult {

  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'settings')
  List<Setting> settings;

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'offset')
  int offset;

  @JsonKey(name: 'total')
  int total;

  SettingsResult(this.success, this.settings);

  factory SettingsResult.fromJson(Map<String, dynamic> json) => _$SettingsResultFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsResultToJson(this);
}

@JsonSerializable()
class Setting {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'value')
  Object value;

  Setting(this.id, this.value);

  factory Setting.fromJson(Map<String, dynamic> json) => _$SettingFromJson(json);
  Map<String, dynamic> toJson() => _$SettingToJson(this);
}
