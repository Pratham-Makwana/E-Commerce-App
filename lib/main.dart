import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';

Future<void> main() async {
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Todo: Initialise Authentication
  runApp(const App());
}
