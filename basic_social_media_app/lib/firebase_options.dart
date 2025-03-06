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
        return windows;
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
    apiKey: 'AIzaSyD64Vt-GeSVQxSH7IaJ9a1N1rvYfQNtVF0',
    appId: '1:94797374528:web:50157d8589d87c711beba5',
    messagingSenderId: '94797374528',
    projectId: 'mj-social-app-1',
    authDomain: 'mj-social-app-1.firebaseapp.com',
    storageBucket: 'mj-social-app-1.firebasestorage.app',
    measurementId: 'G-XGZLBRJ4E3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzyfvqlvDSZxRsRAZbxNK0OGnO9YhRjfQ',
    appId: '1:94797374528:android:f7808e6b794fda5c1beba5',
    messagingSenderId: '94797374528',
    projectId: 'mj-social-app-1',
    storageBucket: 'mj-social-app-1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQ5gTnNuyJWdeBMBqOAJchI1cWEmdPcb0',
    appId: '1:94797374528:ios:7022d8d3f037a9f11beba5',
    messagingSenderId: '94797374528',
    projectId: 'mj-social-app-1',
    storageBucket: 'mj-social-app-1.firebasestorage.app',
    iosBundleId: 'com.example.basicSocialMediaApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD64Vt-GeSVQxSH7IaJ9a1N1rvYfQNtVF0',
    appId: '1:94797374528:web:a38fe6b2ef27eba61beba5',
    messagingSenderId: '94797374528',
    projectId: 'mj-social-app-1',
    authDomain: 'mj-social-app-1.firebaseapp.com',
    storageBucket: 'mj-social-app-1.firebasestorage.app',
    measurementId: 'G-ZR9F050M5E',
  );
}
