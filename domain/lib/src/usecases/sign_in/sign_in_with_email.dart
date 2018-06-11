import 'dart:async';

import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

class SignInWithEmail implements UseCase<User> {
  SignInWithEmail({
    @required AuthService authService,
  })  : assert(authService != null),
        _authService = authService;
  final AuthService _authService;
  Credentials _credentials;

  SignInWithEmail prepare({@required Credentials credentials}) {
    _credentials = credentials;
    return this;
  }

  Future<User> execute() async {
    if (_credentials == null) throw CredentialsNullError();
    var userInfo = await _authService.signInWithEmailAndPassword(_credentials);
    return new User((b) => b.userInfo = userInfo.toBuilder());
  }
}

class CredentialsNullError extends Error {
  String toString() =>
      "Credentails are null and must not be null. Have you called SignInWithEmail.prepare() ?";
}
