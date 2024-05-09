import 'package:e_commerce_app/features/authentication/screens/OnBoarding/onboarding.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  // It is getter method of type AuthenticationRepository class itself
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    // Remove the native Splash Screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  /// -- Function to Show Relevant Screen
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);

    // Check is it's first time launching the app
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())       // Redirect to Login Screen if not the first time
        : Get.offAll(() => const OnBoardingScreen()); // Redirect to onBoarding Screen if it's the first time
  }

/* ----------------------------------------- Email & Password sign-in --------------------------------------- */

  /// [EmailAuthetication] - SignIn
  /// [EmailAuthentication] - Register
  /// [ReAuthetication] - ReAuthetication User
  /// [EmailVerification] - Mail Verification
/* ----------------------------------------- Federated identity & social sign-in --------------------------------------- */

  /// [GoogleAuthetication] - Google
  /// [FacebookAuthetication] - Facebook
/* ----------------------------------------- ./end Federated identity & social sign-in  --------------------------------------- */

  /// [LogoutUser] - valid for only authetication
  /// Delete User - remove user Auth and FireStore Account
}
