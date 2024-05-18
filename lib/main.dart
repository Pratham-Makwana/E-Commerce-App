import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';

Future<void> main() async {
  /// [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: Binding has not yet been initialized.
  /// To Avoid Error Add Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  // Todo: Init Local Storage
  /// -- GetX Local Storage
  await GetStorage.init();
  // Todo: Await Native Splash
  /// --- Await Splash until other items Load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Todo: Initialize Firebase

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  // Todo: Initialise Authentication

  // Load all the Material Design / Theme / Localizations / Binding
  runApp(const App());
}
