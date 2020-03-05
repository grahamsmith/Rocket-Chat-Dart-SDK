class Auth {

  String userId;
  String authToken;

  static final Auth _singleton = Auth._internal();

  factory Auth() => _singleton;

  static Auth get shared => _singleton;

  Auth._internal();
}

class Session {
  // singleton
  static final Session _singleton = Session._internal();
  factory Session() => _singleton;
  Session._internal();



  String username;
  String password;
}