library rocket_chat_dart_sdk;

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'models/rooms/create_discussion.dart';
import 'models/rooms/favourite_room.dart';
import 'models/rooms/get_room_info.dart';
import 'models/rooms/get_rooms.dart';

import 'models/authentication/login.dart';
import 'models/authentication/logout.dart';
import 'models/authentication/me.dart';
import 'models/chat/send_message.dart';
import 'models/push/create_push_token.dart';
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
  Future<GetRoomsResult> getRooms();

  @GET('/api/v1/rooms.get?updatedSince={since}')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetRoomsResult> getRoomsSince(@Path() String since);

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

//  @POST("/api/v1/push.token")
//  @Headers(<String, String>{"requires-auth": "true"})
//  Future<CreatePushTokenResult> savePushToken(@Body() CreatePushTokenRequest pushTokenRequest);
//
//  @DELETE("/api/v1/push.token")
//  @Headers(<String, String>{"requires-auth": "true"})
//  Future<PushTokenDeleteResult> deletePushToken(@Body() PushTokenDeleteRequest pushTokenDeleteRequest);

  //CHAT

  @POST('/api/v1/chat.sendMessage')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<SendMessageResponse> sendChatMessage(@Body() SendMessageRequest sendChatMessageRequest);

//  @POST("/api/v1/chat.delete")
//  @Headers(<String, String>{"requires-auth": "true"})
//  Future<DeleteChatMessageResult> deleteChatMessage(@Body() DeleteChatMessageRequest deleteChatMessageRequest)
//
//  @GET("/api/v1/chat.getMessage?msgId={messageId}")
//  @Headers(<String, String>{"requires-auth": "true"})
//  Future<GetChatMessageResult> getChatMessage(@Path String messageId)

}