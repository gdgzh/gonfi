import 'dart:async';

import 'package:gonfi_domain/src/entities.dart';

abstract class AuthService {
  Stream<bool> isSignedIn();
  Future<void> signOut();
  Future<UserInfo> signInWithGoogle();
  Future<UserInfo> signInWithEmailAndPassword(Credentials credentials);
  Future<UserInfo> createUserWithEmailAndPassword(Credentials credentials);
}
