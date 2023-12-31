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
    apiKey: 'AIzaSyDyGEGoyLejVLdd5V7PokrlyDriTElQCD0',
    appId: '1:124100561722:web:a7348abaad0776203e1e03',
    messagingSenderId: '124100561722',
    projectId: 'crudkost',
    authDomain: 'crudkost.firebaseapp.com',
    storageBucket: 'crudkost.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCR2V5yENPm3d_W_YJlfEDjxNUDytTqc4c',
    appId: '1:124100561722:android:69d21d89b5ff28b53e1e03',
    messagingSenderId: '124100561722',
    projectId: 'crudkost',
    storageBucket: 'crudkost.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIxvDYLOZ636HMfJmEo3oRbo-PlszqGEA',
    appId: '1:124100561722:ios:f509e5f73d841f1d3e1e03',
    messagingSenderId: '124100561722',
    projectId: 'crudkost',
    storageBucket: 'crudkost.appspot.com',
    iosBundleId: 'com.example.flutterFirebaseCrudApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCIxvDYLOZ636HMfJmEo3oRbo-PlszqGEA',
    appId: '1:124100561722:ios:f509e5f73d841f1d3e1e03',
    messagingSenderId: '124100561722',
    projectId: 'crudkost',
    storageBucket: 'crudkost.appspot.com',
    iosBundleId: 'com.example.flutterFirebaseCrudApp',
  );
}
