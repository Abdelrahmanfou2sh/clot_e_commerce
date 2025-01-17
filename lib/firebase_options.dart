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
    apiKey: 'AIzaSyC8TsIsHyg_mvQueriED5JYyNZB5SLPajc',
    appId: '1:600220357142:web:43b8490f55c8a2aff6db37',
    messagingSenderId: '600220357142',
    projectId: 'clot-ecommerce-264df',
    authDomain: 'clot-ecommerce-264df.firebaseapp.com',
    storageBucket: 'clot-ecommerce-264df.firebasestorage.app',
    measurementId: 'G-XEM7LYLXRV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMDYehtKOocB77jgBjkFJHS1ag1lIdbco',
    appId: '1:600220357142:android:dff666d2428e9e36f6db37',
    messagingSenderId: '600220357142',
    projectId: 'clot-ecommerce-264df',
    storageBucket: 'clot-ecommerce-264df.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9drHVjwXnfSuFX28J3eBdmLyUc-aruZk',
    appId: '1:600220357142:ios:9faf6c281937b35af6db37',
    messagingSenderId: '600220357142',
    projectId: 'clot-ecommerce-264df',
    storageBucket: 'clot-ecommerce-264df.firebasestorage.app',
    iosBundleId: 'com.example.clotEcommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9drHVjwXnfSuFX28J3eBdmLyUc-aruZk',
    appId: '1:600220357142:ios:9faf6c281937b35af6db37',
    messagingSenderId: '600220357142',
    projectId: 'clot-ecommerce-264df',
    storageBucket: 'clot-ecommerce-264df.firebasestorage.app',
    iosBundleId: 'com.example.clotEcommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC8TsIsHyg_mvQueriED5JYyNZB5SLPajc',
    appId: '1:600220357142:web:75bb0eb9ef445fccf6db37',
    messagingSenderId: '600220357142',
    projectId: 'clot-ecommerce-264df',
    authDomain: 'clot-ecommerce-264df.firebaseapp.com',
    storageBucket: 'clot-ecommerce-264df.firebasestorage.app',
    measurementId: 'G-7NF32PYV3P',
  );
}
