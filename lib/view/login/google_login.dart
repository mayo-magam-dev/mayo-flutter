import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class GoogleLogin {
  Future<UserCredential> login() async {
    try {
      final GoogleSignInAccount? user = await GoogleSignIn().signIn();
      if (user == null) {
        throw Exception('Google 로그인 취소');
      }

      final GoogleSignInAuthentication userAuthentication = await user.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: userAuthentication.accessToken,
        idToken: userAuthentication.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print('Google 로그인 실패: $e');
      rethrow;
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  }
}

class AppleLogin {
  Future<UserCredential> login() async {
    final AuthorizationCredentialAppleID appleCredential =
        await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final OAuthCredential credential = OAuthProvider('apple.com').credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    return userCredential;
  }

  Future<void> logout() async {
    await AppleLogin().logout();
    await FirebaseAuth.instance.signOut();
  }
}
