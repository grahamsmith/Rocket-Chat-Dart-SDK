library rocket_chat_flutter_sdk;

import 'auth/auth_interceptor.dart';
import 'auth/login_interceptor.dart';
import 'rest_client.dart';
import 'package:dio/dio.dart';


class RocketChatClient {

  RestClient restClient;

  RocketChatClient(this.restClient);

  static RocketChatClient instance(String serverUrl) {

    var options = BaseOptions(
      baseUrl: serverUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );

    var dio = Dio(options);
    dio.interceptors.add(AuthInterceptor());
    dio.interceptors.add(LoginInterceptor());

    var service = RestClient(dio);

    return RocketChatClient(service);
  }
}