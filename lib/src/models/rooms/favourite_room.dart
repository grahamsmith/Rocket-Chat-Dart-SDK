import 'package:json_annotation/json_annotation.dart';

part 'favourite_room.g.dart';

@JsonSerializable()
class FavouriteRoomRequest {

  String roomId;
  bool favorite;

  FavouriteRoomRequest(this.roomId, this.favorite);

  factory FavouriteRoomRequest.fromJson(Map<String, dynamic> json) => _$FavouriteRoomRequestFromJson(json);
  Map<String, dynamic> toJson() => _$FavouriteRoomRequestToJson(this);
}

@JsonSerializable()
class FavouriteRoomResult {
  String message;

  FavouriteRoomResult(this.message);

  factory FavouriteRoomResult.fromJson(Map<String, dynamic> json) => _$FavouriteRoomResultFromJson(json);
  Map<String, dynamic> toJson() => _$FavouriteRoomResultToJson(this);
}