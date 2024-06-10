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
    apiKey: 'AIzaSyCB4lQFydmPUz5CPTH98Lwjl_MxjA9Lhmg',
    appId: '1:265819471352:web:32c6be7af695209c37aa0d',
    messagingSenderId: '265819471352',
    projectId: 'trip-plan-430c9',
    authDomain: 'trip-plan-430c9.firebaseapp.com',
    storageBucket: 'trip-plan-430c9.appspot.com',
    measurementId: 'G-HWQ0BYSNDS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNB5LUnwZFJq22ZIpCw9mG9hRt3uo_soI',
    appId: '1:265819471352:android:a9cb284c7ce11de037aa0d',
    messagingSenderId: '265819471352',
    projectId: 'trip-plan-430c9',
    storageBucket: 'trip-plan-430c9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyARBGsjB-YJmvxCsKqBEdf709FBwwwaw0k',
    appId: '1:265819471352:ios:f46a6356d622f19837aa0d',
    messagingSenderId: '265819471352',
    projectId: 'trip-plan-430c9',
    storageBucket: 'trip-plan-430c9.appspot.com',
    iosBundleId: 'com.example.tripPlan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyARBGsjB-YJmvxCsKqBEdf709FBwwwaw0k',
    appId: '1:265819471352:ios:f46a6356d622f19837aa0d',
    messagingSenderId: '265819471352',
    projectId: 'trip-plan-430c9',
    storageBucket: 'trip-plan-430c9.appspot.com',
    iosBundleId: 'com.example.tripPlan',
  );
}
