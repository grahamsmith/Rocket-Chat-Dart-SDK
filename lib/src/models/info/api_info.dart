import 'package:json_annotation/json_annotation.dart';

part 'api_info.g.dart';

@JsonSerializable(includeIfNull: false)
class ApiInfoResult {

  @JsonKey(name: 'success', nullable: false)
  bool success;

  @JsonKey(name: 'info', nullable: true)
  ApiInfo apiInfo;

  ApiInfoResult(this.success, this.apiInfo);

  factory ApiInfoResult.fromJson(Map<String, dynamic> json) => _$ApiInfoResultFromJson(json);
  Map<String, dynamic> toJson() => _$ApiInfoResultToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ApiInfo {

  @JsonKey(name: 'version', nullable: false)
  String version;

  @JsonKey(name: 'build', nullable: true)
  ApiInfoBuild build;

  @JsonKey(name: 'commit', nullable: true)
  ApiInfoCommit commit;

  ApiInfo(this.version, this.build, this.commit);

  factory ApiInfo.fromJson(Map<String, dynamic> json) => _$ApiInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ApiInfoToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ApiInfoBuild {

  @JsonKey(name: 'nodeVersion', nullable: false)
  String nodeVersion;

  @JsonKey(name: 'arch', nullable: false)
  String arch;

  @JsonKey(name: 'platform', nullable: false)
  String platform;

  @JsonKey(name: 'cpus', nullable: false)
  int cpus = 0;

  ApiInfoBuild(this.nodeVersion, this.arch, this.platform, this.cpus);

  factory ApiInfoBuild.fromJson(Map<String, dynamic> json) => _$ApiInfoBuildFromJson(json);
  Map<String, dynamic> toJson() => _$ApiInfoBuildToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ApiInfoCommit {

  @JsonKey(name: 'hash', nullable: false)
  String hash;

  @JsonKey(name: 'date', nullable: false)
  String date;

  @JsonKey(name: 'author', nullable: false)
  String author;

  @JsonKey(name: 'tag', nullable: false)
  String tag;

  @JsonKey(name: 'branch', nullable: false)
  String branch;

  ApiInfoCommit(this.hash, this.date, this.author, this.tag, this.branch);

  factory ApiInfoCommit.fromJson(Map<String, dynamic> json) => _$ApiInfoCommitFromJson(json);
  Map<String, dynamic> toJson() => _$ApiInfoCommitToJson(this);
}