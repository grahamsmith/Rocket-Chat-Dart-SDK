library rocket_chat_flutter_sdk;

import 'auth/auth_interceptor.dart';
import 'auth/login_interceptor.dart';
import 'rest_client.dart';
import 'package:dio/dio.dart';

class RocketChatClient {

  static RocketChatClient _instance;

  final RestClient restClient;

  RocketChatClient._privateConstructor(this.restClient);

  static RocketChatClient getInstance({String serverUrl}) {

    if(serverUrl != null && serverUrl.isNotEmpty) {

      var options = BaseOptions(
        baseUrl: serverUrl,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      );

      var dio = Dio(options);
      dio.interceptors.add(AuthInterceptor());
      dio.interceptors.add(LoginInterceptor());

      var service = RestClient(dio);

      _instance = RocketChatClient._privateConstructor(service);
    }

    return _instance;
  }
}