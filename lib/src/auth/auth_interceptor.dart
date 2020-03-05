import 'package:dio/dio.dart';
import 'auth.dart';

class AuthInterceptor extends Interceptor {


  @override
  Future onRequest(RequestOptions options) {

    if (options.headers.containsKey('requires-auth')) {

      //remove the auxiliary header
      options.headers.remove('requires-auth');

      options.headers['X-Auth-Token'] = Auth().authToken;
      options.headers['X-User-Id'] = Auth().userId;
    }

    return super.onRequest(options);
  }
}