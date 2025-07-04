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
    apiKey: 'AIzaSyDw7b0nA6ByT0sjUU_bHUAgFl3X05-aExg',
    appId: '1:31047527245:web:0ef08884aaaf2a6b21a504',
    messagingSenderId: '31047527245',
    projectId: 'cartomania-9',
    authDomain: 'cartomania-9.firebaseapp.com',
    storageBucket: 'cartomania-9.firebasestorage.app',
    measurementId: 'G-LY5CFRTQVR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCLRSXpjqOOpnOUr6A9SmuDyg1BKY1yXs',
    appId: '1:31047527245:android:22ea38641dd4880c21a504',
    messagingSenderId: '31047527245',
    projectId: 'cartomania-9',
    storageBucket: 'cartomania-9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqKt3QBZ24w9oAv-NenZIVUVvD7kh3I_4',
    appId: '1:31047527245:ios:e6ac1cf57319fc3b21a504',
    messagingSenderId: '31047527245',
    projectId: 'cartomania-9',
    storageBucket: 'cartomania-9.firebasestorage.app',
    iosBundleId: 'com.starland.cartomania',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqKt3QBZ24w9oAv-NenZIVUVvD7kh3I_4',
    appId: '1:31047527245:ios:e6ac1cf57319fc3b21a504',
    messagingSenderId: '31047527245',
    projectId: 'cartomania-9',
    storageBucket: 'cartomania-9.firebasestorage.app',
    iosBundleId: 'com.starland.cartomania',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDw7b0nA6ByT0sjUU_bHUAgFl3X05-aExg',
    appId: '1:31047527245:web:fcc02a064b83a3b221a504',
    messagingSenderId: '31047527245',
    projectId: 'cartomania-9',
    authDomain: 'cartomania-9.firebaseapp.com',
    storageBucket: 'cartomania-9.firebasestorage.app',
    measurementId: 'G-BM01K1GDQK',
  );

}