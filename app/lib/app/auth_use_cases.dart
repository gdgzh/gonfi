import 'package:gonfi_domain/domain.dart';

/// This class is only a facade to have on single class of all auth use cases
class AuthUseCases {
  AuthUseCases(this._signWithEmail, this._singWithGoogle, this._singOut)
      : assert(_singWithGoogle != null),
        assert(signInWithGoogle != null);

  final SignInWithEmail _signWithEmail;
  final SignInGoogle _singWithGoogle;
  final SignOut _singOut;

  SignInWithEmail get signInWithEmail => _signWithEmail;
  SignInGoogle get signInWithGoogle => _singWithGoogle;
  SignOut get signOut => _singOut;
}
