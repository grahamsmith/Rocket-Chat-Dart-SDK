library rocket_chat_dart_sdk;

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:rocket_chat_dart_sdk/src/models/authentication/login_with_facebook.dart';
import 'package:rocket_chat_dart_sdk/src/models/authentication/login_with_twitter.dart';
import 'package:rocket_chat_dart_sdk/src/models/chat/star_message.dart';
import 'package:rocket_chat_dart_sdk/src/models/chat/unstar_message.dart';
import 'package:rocket_chat_dart_sdk/src/models/command/get_command.dart';
import 'package:rocket_chat_dart_sdk/src/models/command/run_command.dart';
import 'package:rocket_chat_dart_sdk/src/models/custom_statuses/list_custom_statuses.dart';
import 'package:rocket_chat_dart_sdk/src/models/rooms/rooms_upload.dart';

import 'models/authentication/login_with_google.dart';
import 'models/channels/get_channel_history.dart';
import 'models/chat/delete_message.dart';
import 'models/chat/follow_message.dart';
import 'models/chat/get_message.dart';
import 'models/common/rocket_chat_response.dart';
import 'models/info/api_info.dart';
import 'models/push/create_push_token.dart';
import 'models/push/delete_push_token.dart';
import 'models/rooms/create_discussion.dart';
import 'models/rooms/favourite_room.dart';
import 'models/rooms/get_admin_rooms.dart';
import 'models/rooms/get_room_info.dart';
import 'models/rooms/get_rooms.dart';
import 'models/settings/settings.dart';

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

  // INFO

  @GET('/api/info')
  Future<ApiInfoResult> getApiInfo();

  // AUTHENTICATION

  @POST('/api/v1/login')
  Future<LoginResult> login(@Body() LoginRequest loginRequest);

  @POST('/api/v1/login')
  Future<LoginResult> loginWithGoogle(@Body() LoginWithGoogleRequest loginRequest);

  @POST('/api/v1/login')
  Future<LoginResult> loginWithFacebook(@Body() LoginWithFacebookRequest loginRequest);

  @POST('/api/v1/login')
  Future<LoginResult> loginWithTwitter(@Body() LoginWithTwitterRequest loginRequest);

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

  @POST('/api/v1/chat.followMessage')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<RocketChatResponse> followChatMessage(FollowMessageRequest followMessageRequest);

  @POST('/api/v1/chat.starMessage')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<RocketChatResponse> starChatMessage(StarMessageRequest followMessageRequest);

  @POST('/api/v1/chat.unstarMessage')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<RocketChatResponse> unstarChatMessage(UnstarMessageRequest followMessageRequest);

  @POST('/api/v1/rooms.upload/{roomId}')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<RocketChatResponse> uploadFileToRoom(@Path() String roomId, RoomUploadRequest uploadRequest);

  // Command

  @GET('/api/v1/commands.get')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetCommandResult> getCommand(@Query('command') String command);

  @GET('/api/v1/commands.list')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetAllCommandsResult> getAllCommands();

  @POST('/api/v1/commands.run')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<RocketChatResponse> runCommand(@Body() RunCommandRequest request);

  // Custom User Status

  @GET('/api/v1/custom-user-status.list')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<GetCustomStatuesesResult> getCustomUserStatuses();

  // Settings

  @GET('/api/v1/settings.public')
  Future<SettingsResult> getPublicSettings();

  @GET('/api/v1/settings')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<SettingsResult> getPrivateSettings();

  @GET('/api/v1/settings/{settingId}')
  @Headers(<String, String>{'requires-auth': 'true'})
  Future<Setting> getSettings(@Path() String settingId);

}