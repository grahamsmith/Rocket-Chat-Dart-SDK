// GENERATED CODE - DO NOT MODIFY BY HAND

part of rocket_chat_dart_sdk;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  login(loginRequest) async {
    ArgumentError.checkNotNull(loginRequest, 'loginRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginRequest?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LoginResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  me() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/me',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Me.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  logout() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/logout',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LogoutResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  leaveRoom(leaveRoomRequest) async {
    ArgumentError.checkNotNull(leaveRoomRequest, 'leaveRoomRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(leaveRoomRequest?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/rooms.leave',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LeaveRoomResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  favouriteRoom(favouriteRoomRequest) async {
    ArgumentError.checkNotNull(favouriteRoomRequest, 'favouriteRoomRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(favouriteRoomRequest?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/rooms.favorite',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FavouriteRoomResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  createDiscussion(createDiscussionRequest) async {
    ArgumentError.checkNotNull(
        createDiscussionRequest, 'createDiscussionRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(createDiscussionRequest?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/rooms.createDiscussion',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CreateDiscussionResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getRooms() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/rooms.get',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetRoomsResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getRoomsSince(since) async {
    ArgumentError.checkNotNull(since, 'since');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/rooms.get?updatedSince=$since',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetRoomsResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getRoomInfoByName(roomId) async {
    ArgumentError.checkNotNull(roomId, 'roomId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/rooms.info?roomId=$roomId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetRoomInfoResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getRoomInfoById(roomName) async {
    ArgumentError.checkNotNull(roomName, 'roomName');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/rooms.info?roomName=$roomName',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetRoomInfoResult.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  sendChatMessage(sendChatMessageRequest) async {
    ArgumentError.checkNotNull(
        sendChatMessageRequest, 'sendChatMessageRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sendChatMessageRequest?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/v1/chat.sendMessage',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{'requires-auth': 'true'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SendMessageResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
