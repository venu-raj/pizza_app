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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBqYKMKMOVzW6CKTOwJ-_6XTybEwhK5Wcw',
    appId: '1:386199392443:web:9481e6984891fb5440199e',
    messagingSenderId: '386199392443',
    projectId: 'pizza-app-c3e5e',
    authDomain: 'pizza-app-c3e5e.firebaseapp.com',
    storageBucket: 'pizza-app-c3e5e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAz28BFfJZTo9r037KAg5LINeVMu8W92WU',
    appId: '1:386199392443:android:89a19ff31e7d5a3040199e',
    messagingSenderId: '386199392443',
    projectId: 'pizza-app-c3e5e',
    storageBucket: 'pizza-app-c3e5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1z2b-61V26Pu01bmBLbA2h7D2cyH0zeE',
    appId: '1:386199392443:ios:7469d67244a7205d40199e',
    messagingSenderId: '386199392443',
    projectId: 'pizza-app-c3e5e',
    storageBucket: 'pizza-app-c3e5e.appspot.com',
    iosBundleId: 'com.example.pizzaApp',
  );
}
