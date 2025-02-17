import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLogin {

  Future<UserCredential> login() async {

    final GoogleSignInAccount? user = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? userAuthentication = await user?.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: userAuthentication?.accessToken,
      idToken: userAuthentication?.idToken,
    );
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    return userCredential;
  }

  Future<void> logout() async {
    await GoogleSignIn().signOut();
  }
}