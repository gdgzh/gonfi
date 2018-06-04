import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as FB;
import 'package:gonfi_domain/domain.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';

// TODO move it to a data lib
// TODO write unit test
// TODO write integration test
class FirebaseAuthService implements AuthService {
  final FB.FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final BehaviorSubject<bool> _isSignedIn = BehaviorSubject(seedValue: false);
  FirebaseAuthService._()
      : _auth = FB.FirebaseAuth.instance,
        _googleSignIn = new GoogleSignIn();
  static FirebaseAuthService instance = new FirebaseAuthService._();

  @override
  Future<UserInfo> signInWithGoogle() async {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    FB.FirebaseUser user = await _auth.signInWithGoogle(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return _convertUserAndUpdateStatus(user);
  }

  @override
  Future<UserInfo> signInWithEmailAndPassword(Credentials credentials) async {
    final user = await _auth.signInWithEmailAndPassword(
        email: credentials.email, password: credentials.password);
    return _convertUserAndUpdateStatus(user);
  }

  UserInfo _convertUserAndUpdateStatus(FB.FirebaseUser user) {
    _isSignedIn.add(true);
    return UserInfo((b) => b
      ..uid = user.uid
      ..providerId = user.providerId
      ..email = user.email
      ..photoUrl = user.photoUrl
      ..displayName = user.displayName);
  }

  @override
  Future<UserInfo> createUserWithEmailAndPassword(
      Credentials credentials) async {
    final user = await _auth.createUserWithEmailAndPassword(
        email: credentials.email, password: credentials.password);
    return _convertUserAndUpdateStatus(user);
  }

  @override
  Stream<bool> isSignedIn() => _isSignedIn.stream;

  @override
  Future<void> signOut() {
    final future = _auth.signOut();
    future.then((dynamic) => _isSignedIn.add(false));
    return future;
  }
}
