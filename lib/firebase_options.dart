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
    apiKey: 'AIzaSyCdUtQInwYncqADnpnkarzofPPT1PEWbBU',
    appId: '1:624214346363:web:623ac1cb5a1effc2afb0de',
    messagingSenderId: '624214346363',
    projectId: 'chat-app-29e86',
    authDomain: 'chat-app-29e86.firebaseapp.com',
    storageBucket: 'chat-app-29e86.appspot.com',
    measurementId: 'G-VF56SCB6DL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOEYeEPWqO8keeGRmkOYHEvTskG6RUp88',
    appId: '1:624214346363:android:d3a1d240471c7077afb0de',
    messagingSenderId: '624214346363',
    projectId: 'chat-app-29e86',
    storageBucket: 'chat-app-29e86.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASMY9Br8ID28Upu3KdxdjewJyPO0R7ZlA',
    appId: '1:624214346363:ios:2bc1020a55afbd14afb0de',
    messagingSenderId: '624214346363',
    projectId: 'chat-app-29e86',
    storageBucket: 'chat-app-29e86.appspot.com',
    iosBundleId: 'com.example.chaty',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASMY9Br8ID28Upu3KdxdjewJyPO0R7ZlA',
    appId: '1:624214346363:ios:2bc1020a55afbd14afb0de',
    messagingSenderId: '624214346363',
    projectId: 'chat-app-29e86',
    storageBucket: 'chat-app-29e86.appspot.com',
    iosBundleId: 'com.example.chaty',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCdUtQInwYncqADnpnkarzofPPT1PEWbBU',
    appId: '1:624214346363:web:bda88d14524eabedafb0de',
    messagingSenderId: '624214346363',
    projectId: 'chat-app-29e86',
    authDomain: 'chat-app-29e86.firebaseapp.com',
    storageBucket: 'chat-app-29e86.appspot.com',
    measurementId: 'G-FST1094BGK',
  );
}
