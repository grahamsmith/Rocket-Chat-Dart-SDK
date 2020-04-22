library rocket_chat_dart_sdk;

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'models/channels/get_channel_history.dart';
import 'models/chat/delete_message.dart';
import 'models/chat/follow_message.dart';
import 'models/chat/get_message.dart';
import 'models/common/rocket_chat_response.dart';
import 'models/push/create_push_token.dart';
import 'models/push/delete_push_token.dart';
import 'models/rooms/create_discussion.dart';
import 'models/rooms/favourite_room.dart';
import 'models/rooms/get_room_info.dart';
import 'models/rooms/get_rooms.dart';

import 'models/authentication/login.dart';
import 'models/authentication/logout.dart';
import 'models/authentication/me.dart';
import 'models/chat/send_message.dart';
import 'models/rooms/leave_room.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {

  String baseUrl;

  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //AUTHENTICATION

  @POST('/api/v1/login')
  Future<LoginResult> login(@Body() LoginRequest loginRequest);

  @GET('/api/v1/me')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<Me> me();

  @GET('/api/v1/logout')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<LogoutResult> logout();

  //ROOMS

  @GET('/api/v1/rooms.adminRooms')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetAdminRoomsResult> getAdminRooms({@Query('types') String types = '', @Query('filter') String filter = ''});

  @POST('/api/v1/rooms.leave')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<LeaveRoomResult> leaveRoom(@Body() LeaveRoomRequest leaveRoomRequest);

  @POST('/api/v1/rooms.favorite')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<FavouriteRoomResult> favouriteRoom(@Body() FavouriteRoomRequest favouriteRoomRequest);

  @POST('/api/v1/rooms.createDiscussion')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<CreateDiscussionResult> createDiscussion(@Body() CreateDiscussionRequest createDiscussionRequest);

  @GET('/api/v1/rooms.get')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetRoomsResult> getRooms({@Query('updatedSince') String updatedSince = ''});

  @GET('/api/v1/rooms.info?roomId={roomId}')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetRoomInfoResult> getRoomInfoByName(@Path() String roomId);

  @GET('/api/v1/rooms.info?roomName={roomName}')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetRoomInfoResult> getRoomInfoById(@Path() String roomName);

//  @GET("/api/v1/rooms.getDiscussions") //TODO - unclear docs -http://localhost:3000/api/v1/rooms.getDiscussions?roomId=GENERAL
//  @Headers(<String, String>{"requires-auth": "true"})
//  Future<LeaveRoomResult> getDiscussions();

//  @GET("/api/v1/rooms.adminRooms?types[]={type}&filter={filter}") //TODO
//  @Headers(<String, String>{"requires-auth": "true"})
//  Future<LeaveRoomResult> adminRooms(@Path() String types, @Path() String filter);

//  @POST("/api/v1/rooms.upload/{roomId}") //TODO
//  @Headers(<String, String>{"requires-auth": "true"})
//  Future<LeaveRoomResult> uploadFileToRoom(@Part() File file);

  //PUSH TOKENS

  @POST('/api/v1/push.token')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<CreatePushTokenResult> savePushToken(@Body() CreatePushTokenRequest pushTokenRequest);

  @DELETE('/api/v1/push.token')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<DeletePushTokenResult> deletePushToken(@Body() DeletePushTokenRequest pushTokenDeleteRequest);

  //CHAT

  @POST('/api/v1/chat.postMessage')
  @Headers(<String, String>{'requires-auth': 'true', 'Content-Type': 'application/json'})
  Future<SendMessageResponse> sendChatMessage(@Body() PostMessage sendChatMessageRequest);

  @GET('/api/v1/channels.history')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetChannelHistoryResult> getChannelHistory(@Query('roomId') String roomId);

  @POST('/api/v1/chat.delete')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<DeleteMessageResult> deleteChatMessage(@Body() DeleteMessageRequest deleteChatMessageRequest);

  @GET('/api/v1/chat.getMessage')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetMessageResult> getChatMessage(@Query('msgId') String messageId);

  @GET('/api/v1/chat.followMessage')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<RocketChatResponse> followChatMessage(FollowMessageRequest followMessageRequest);

}