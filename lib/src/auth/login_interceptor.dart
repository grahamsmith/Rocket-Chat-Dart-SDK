import 'package:dio/dio.dart';
import 'package:rocket_chat_dart_sdk/src/models/authentication/login.dart';
import 'auth.dart';

class LoginInterceptor extends Interceptor {

  @override
  Future onResponse(Response response) {

    if(response.request.path.contains('login') && response.statusCode == 200) {

        //var loginResponse = response as Response<LoginResult>;

        Auth().authToken = response.data['data']['authToken'];
        Auth().userId  = response.data['data']['userId'];
    }

    return super.onResponse(response);
  }
}