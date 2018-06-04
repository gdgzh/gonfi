import 'dart:async';

import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

class SignInGoogle {
  SignInGoogle({
    @required AuthService authService,
  })  : assert(authService != null),
        _authService = authService;
  final AuthService _authService;

  Future<User> execute() async {
    var userInfo = await _authService.signInWithGoogle();
    return new User((b) => b.userInfo = userInfo.toBuilder());
  }
}
