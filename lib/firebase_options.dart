// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLaZwZ9Bm3J3Zr7cwOoY7UOy6F1xCXpAk',
    appId: '1:292349774898:android:227686fe24ecb2a7fbc02b',
    messagingSenderId: '292349774898',
    projectId: 'mayo-app-280d4',
    storageBucket: 'mayo-app-280d4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRtqcvOjs7bfttAy6h0QMB0AkhXfu7r7A',
    appId: '1:292349774898:ios:8665d768d9818f19fbc02b',
    messagingSenderId: '292349774898',
    projectId: 'mayo-app-280d4',
    storageBucket: 'mayo-app-280d4.appspot.com',
    androidClientId: '292349774898-21rdegphp613mokklskps4o538jnq4cu.apps.googleusercontent.com',
    iosClientId: '292349774898-14kug5hr8fr84kt44e36b61q4ddvlkv6.apps.googleusercontent.com',
    iosBundleId: 'com.example.mayoFlutter',
  );
}