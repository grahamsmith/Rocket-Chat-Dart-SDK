// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouriteRoomRequest _$FavouriteRoomRequestFromJson(Map<String, dynamic> json) {
  return FavouriteRoomRequest(
    json['roomId'] as String,
    json['favorite'] as bool,
  );
}

Map<String, dynamic> _$FavouriteRoomRequestToJson(
        FavouriteRoomRequest instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'favorite': instance.favorite,
    };

FavouriteRoomResult _$FavouriteRoomResultFromJson(Map<String, dynamic> json) {
  return FavouriteRoomResult(
    json['message'] as String,
  );
}

Map<String, dynamic> _$FavouriteRoomResultToJson(
        FavouriteRoomResult instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
