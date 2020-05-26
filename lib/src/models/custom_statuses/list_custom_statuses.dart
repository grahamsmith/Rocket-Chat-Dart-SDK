import 'package:json_annotation/json_annotation.dart';

part 'list_custom_statuses.g.dart';

@JsonSerializable()
class GetCustomStatuesesResult {

  @JsonKey(name: 'statuses')
  List<CustomStatus> statuses;

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'offset')
  int offset;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'success')
  bool success;

  GetCustomStatuesesResult(this.statuses, this.count, this.offset, this.total, this.success);

  factory GetCustomStatuesesResult.fromJson(Map<String, dynamic> json) => _$GetCustomStatuesesResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetCustomStatuesesResultToJson(this);
}

@JsonSerializable()
class CustomStatus {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'statusType')
  String statusType;

  @JsonKey(name: '_updatedAt')
  String updatedAt;

  CustomStatus(this.id, this.name, this.statusType, this.updatedAt);

  factory CustomStatus.fromJson(Map<String, dynamic> json) => _$CustomStatusFromJson(json);
  Map<String, dynamic> toJson() => _$CustomStatusToJson(this);
}