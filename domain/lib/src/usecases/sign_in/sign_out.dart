import 'dart:async';

import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

class SignOut {
  SignOut({
    @required AuthService authService,
  })  : assert(authService != null),
        _authService = authService;
  final AuthService _authService;

  Future<void> execute() async {
    return await _authService.signOut();
  }
}
