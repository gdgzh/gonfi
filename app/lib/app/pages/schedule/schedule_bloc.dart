import 'dart:async';

import 'package:gonfi/app/auth_use_cases.dart';
import 'package:gonfi/app/pages/schedule/session_view_model.dart';
import 'package:gonfi_domain/domain.dart';
import 'package:rxdart/rxdart.dart';

class ScheduleBloC {
  User _user;
  AuthUseCases _authUseCases;
  bool _isSigningIn = false;

  final _userSubject = BehaviorSubject<User>(seedValue: null);
  final _photoURL = BehaviorSubject<String>(seedValue: "");
  Stream<User> get userInfo => _userSubject.stream;

  ScheduleBloC(this._authUseCases);

  void _updateState(User user) {
    _isSigningIn = false;
    _user = user;
    _userSubject.add(user);
    _photoURL.add(_user?.userInfo?.photoUrl);
  }

  List<SessionViewModel> getSessions() {
    int add = 0;
    final sessions = List<SessionViewModel>.generate(30, (int index) {
      if (index % 3 == 0) add++;
      return SessionViewModel(
        title: "Registration ${index+1}",
        time: "${8+add}:00",
        subTitle: "1.5 hours / Bla",
      );
    });
    return sessions;
  }

  Stream<String> get photoUrl {
    return _photoURL.stream;
  }

  void _singIn(UseCase<User> useCase) async {
    if (_isSigningIn) {
      await _authUseCases.signOut.execute();
      _updateState(null);
      return;
    }

    _isSigningIn = true;
    final user = await useCase.execute();
    _updateState(user);
  }

  void singInWithGoogle() {
    _singIn(_authUseCases.signInWithGoogle);
  }

  void singInWithEmailAndPassword(Credentials credentials) async {
    _singIn(_authUseCases.signInWithEmail.prepare(credentials: credentials));
  }

  void dispose() {
    _userSubject.close();
  }
}
