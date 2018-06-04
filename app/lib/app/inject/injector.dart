import 'package:gonfi/app/auth_use_cases.dart';
import 'package:gonfi/app/firebase_auth_service.dart';
import 'package:gonfi/app/pages/schedule/schedule_bloc.dart';
import 'package:gonfi_domain/src/services.dart';
import 'package:gonfi_domain/src/usecases.dart';

class Injector {
  Injector._();
  AuthService _autService;

  AuthService get authService {
    if (_autService == null) {
      print('Init new FirebaseInstance');
      _autService = FirebaseAuthService.instance;
    }
    return _autService;
  }

  SignInWithEmail get signInWithEmail {
    return SignInWithEmail(authService: authService);
  }

  SignInGoogle get signInGoogle {
    return SignInGoogle(authService: authService);
  }

  SignOut get signOut {
    return SignOut(authService: authService);
  }

  AuthUseCases get authUseCases {
    return AuthUseCases(signInWithEmail, signInGoogle, signOut);
  }

  ScheduleBloC get scheduleBloc {
    return ScheduleBloC(authUseCases);
  }

  static Injector instance = Injector._();
}
