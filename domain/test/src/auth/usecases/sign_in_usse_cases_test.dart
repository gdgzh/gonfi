import 'dart:async';

import 'package:gonfi_domain/domain.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockService extends Mock implements AuthService {}

void main() {
  AuthService mockAuthService;
  SignInWithEmail signInWithEmail;
  SignInGoogle signInGoogle;
  UserInfo testUserInfo;
  setUp(() {
    mockAuthService = new MockService();
    signInWithEmail = new SignInWithEmail(authService: mockAuthService);
    signInGoogle = new SignInGoogle(authService: mockAuthService);
    testUserInfo = new UserInfo((b) => b
      ..email = ""
      ..uid = ""
      ..displayName = ""
      ..providerId = ""
      ..photoUrl = "");

    var mockAnswer = new Future(() => testUserInfo);
    when(mockAuthService.signInWithEmailAndPassword(any))
        .thenReturn(mockAnswer);

    when(mockAuthService.signInWithGoogle()).thenReturn(mockAnswer);
  });

  group('Sign In with', () {
    test('E-Mail and should call authservice.signInWithEmailAndPassword',
        () async {
      var credentials = new Credentials((b) => b
        ..email = ""
        ..password = "");
      var user = await signInWithEmail.execute(credentials: credentials);
      expect(
          verify(mockAuthService.signInWithEmailAndPassword(captureAny))
              .captured,
          [credentials]);
      expect(user.userInfo, testUserInfo);
    });

    test('Google and should call authservice.signInWithGoogle', () async {
      var user = await signInGoogle.execute();
      verify(mockAuthService.signInWithGoogle());
      expect(user.userInfo, testUserInfo);
    });
  });
}
