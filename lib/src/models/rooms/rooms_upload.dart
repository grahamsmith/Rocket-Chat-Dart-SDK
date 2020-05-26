
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'rooms_upload.g.dart';

@JsonSerializable()
class RoomUploadRequest {

  @JsonKey(name: 'file')
  @Part() File file;

  @JsonKey(name: 'msg', includeIfNull: false)
  String message;

  @JsonKey(name: 'description', includeIfNull: false)
  String description;

  @JsonKey(name: 'tmid', includeIfNull: false)
  String threadMessageId;

  RoomUploadRequest(this.file, {this.message, this.description, this.threadMessageId});

  factory RoomUploadRequest.fromJson(Map<String, dynamic> json) => _$RoomUploadRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RoomUploadRequestToJson(this);
}