// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDWJcNJNciO0ACRGD-ZmZv_R3dIHImTV3Y',
    appId: '1:644100758100:web:72428a23f4660aca376bc1',
    messagingSenderId: '644100758100',
    projectId: 'fluttersearch-5c878',
    authDomain: 'fluttersearch-5c878.firebaseapp.com',
    storageBucket: 'fluttersearch-5c878.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3v8tEugX2Gfm2ibE6p453mxSeOrFNUBU',
    appId: '1:644100758100:android:fc12b9183792f625376bc1',
    messagingSenderId: '644100758100',
    projectId: 'fluttersearch-5c878',
    storageBucket: 'fluttersearch-5c878.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwU3TYMvjywuHFZEtYJv9IndjSLJyBl-g',
    appId: '1:644100758100:ios:53f9d4c2ab0ebe85376bc1',
    messagingSenderId: '644100758100',
    projectId: 'fluttersearch-5c878',
    storageBucket: 'fluttersearch-5c878.appspot.com',
    iosClientId: '644100758100-h1a9o6uhpe80es5hcs0jngut8sbe4ukn.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterSearch',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCwU3TYMvjywuHFZEtYJv9IndjSLJyBl-g',
    appId: '1:644100758100:ios:6210c527bea6854e376bc1',
    messagingSenderId: '644100758100',
    projectId: 'fluttersearch-5c878',
    storageBucket: 'fluttersearch-5c878.appspot.com',
    iosClientId: '644100758100-ianeivktmta309e0ehajhqdin432pfoi.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterSearch.RunnerTests',
  );
}
