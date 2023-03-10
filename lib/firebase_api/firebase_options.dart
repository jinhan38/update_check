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
    apiKey: 'AIzaSyAk3BEJrAWThVsg6Y8018fz-G7zLVLgLjQ',
    appId: '1:359429635326:web:90fd2974b9a5730bb3b9af',
    messagingSenderId: '359429635326',
    projectId: 'update-check-c616c',
    authDomain: 'update-check-c616c.firebaseapp.com',
    storageBucket: 'update-check-c616c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsRRfQE3Nj69sckhIA-ezmfWGk6LGfVVc',
    appId: '1:359429635326:android:a59a447549523a31b3b9af',
    messagingSenderId: '359429635326',
    projectId: 'update-check-c616c',
    storageBucket: 'update-check-c616c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8A3K4uMTqzJpWBc0RuYobDsBHlHMwiC0',
    appId: '1:359429635326:ios:80d090c626a0e707b3b9af',
    messagingSenderId: '359429635326',
    projectId: 'update-check-c616c',
    storageBucket: 'update-check-c616c.appspot.com',
    iosClientId: '359429635326-5504frhh8b3i7hhmp8nmo6kngnpbh4kf.apps.googleusercontent.com',
    iosBundleId: 'com.example.updateCheck',
  );
}
