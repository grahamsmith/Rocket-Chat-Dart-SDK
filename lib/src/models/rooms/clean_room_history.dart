import 'package:json_annotation/json_annotation.dart';

part 'clean_room_history.g.dart';

@JsonSerializable()
class CleanRoomHistoryRequest {
  
  @JsonKey(name: '_id')
  String roomId;

  @JsonKey(name: 'latest')
  String latest;

  @JsonKey(name: 'oldest')
  String oldest;

  @JsonKey(name: 'inclusive')
  bool inclusive = false;

  @JsonKey(name: 'excludePinned')
  bool excludePinned = false;

  @JsonKey(name: 'filesOnly')
  bool filesOnly = false;

  CleanRoomHistoryRequest(this.roomId, this.latest, this.oldest, {this.inclusive, this.excludePinned, this.filesOnly});

  factory CleanRoomHistoryRequest.fromJson(Map<String, dynamic> json) => _$CleanRoomHistoryRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CleanRoomHistoryRequestToJson(this);
}