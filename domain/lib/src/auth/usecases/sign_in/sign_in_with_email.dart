import 'dart:async';

import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

class SignInWithEmail {
  SignInWithEmail({
    @required AuthService authService,
  })  : assert(authService != null),
        _authService = authService;
  final AuthService _authService;

  Future<User> execute({@required Credentials credentials}) async {
    if (credentials == null) throw CredentialsNullError();
    var userInfo = await _authService.signInWithEmailAndPassword(credentials);
    return new User((b) => b.userInfo = userInfo.toBuilder());
  }
}

class CredentialsNullError extends Error {
  String toString() => "Credentails are null and must not be null.";
}
