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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyArRc20ucb9N3Gvt6BEbDXWkOoUQCcq-aM',
    appId: '1:481120990020:web:2fa2ad8e8ddaf5bb409d11',
    messagingSenderId: '481120990020',
    projectId: 'fleet-8d5ab',
    authDomain: 'fleet-8d5ab.firebaseapp.com',
    storageBucket: 'fleet-8d5ab.appspot.com',
    measurementId: 'G-WYG3W9CYKG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkKBbmfSf03gYYxcsqrvsUBI30073r-uE',
    appId: '1:481120990020:android:7e56737ebd1ea7c9409d11',
    messagingSenderId: '481120990020',
    projectId: 'fleet-8d5ab',
    storageBucket: 'fleet-8d5ab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4AT86lgsdz0brh3L3moZ1r1LH2kGCQ1c',
    appId: '1:481120990020:ios:d140e4b1b5a05cf1409d11',
    messagingSenderId: '481120990020',
    projectId: 'fleet-8d5ab',
    storageBucket: 'fleet-8d5ab.appspot.com',
    androidClientId: '481120990020-oibcaobp3ijbh332ooj3m1ionim0eh03.apps.googleusercontent.com',
    iosClientId: '481120990020-nkc0m1t7nks20cn3ec2tquqpfpvi015b.apps.googleusercontent.com',
    iosBundleId: 'com.example.united',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4AT86lgsdz0brh3L3moZ1r1LH2kGCQ1c',
    appId: '1:481120990020:ios:4e3a1d463d3eda46409d11',
    messagingSenderId: '481120990020',
    projectId: 'fleet-8d5ab',
    storageBucket: 'fleet-8d5ab.appspot.com',
    androidClientId: '481120990020-oibcaobp3ijbh332ooj3m1ionim0eh03.apps.googleusercontent.com',
    iosClientId: '481120990020-7cpi2j1gcsgigkp1htg58b4o9gs9rf2a.apps.googleusercontent.com',
    iosBundleId: 'com.example.united.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyArRc20ucb9N3Gvt6BEbDXWkOoUQCcq-aM',
    appId: '1:481120990020:web:fe5cdcf29dd40ed7409d11',
    messagingSenderId: '481120990020',
    projectId: 'fleet-8d5ab',
    authDomain: 'fleet-8d5ab.firebaseapp.com',
    storageBucket: 'fleet-8d5ab.appspot.com',
    measurementId: 'G-QHHNYW1HFM',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyArRc20ucb9N3Gvt6BEbDXWkOoUQCcq-aM',
    appId: '1:481120990020:web:ee95b3c0133b9dbd409d11',
    messagingSenderId: '481120990020',
    projectId: 'fleet-8d5ab',
    authDomain: 'fleet-8d5ab.firebaseapp.com',
    storageBucket: 'fleet-8d5ab.appspot.com',
    measurementId: 'G-F2FV5JBPST',
  );
}
