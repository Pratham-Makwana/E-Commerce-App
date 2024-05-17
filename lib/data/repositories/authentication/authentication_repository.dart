import 'package:e_commerce_app/features/authentication/screens/OnBoarding/onboarding.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/home_navigation_menu.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_auth_exception.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/format_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  // It is getter method of type AuthenticationRepository class itself
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

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
    final user = _auth.currentUser;
    if(user != null){
      if(user.emailVerified){
        Get.offAll(() => const NavigationMenu());
      }else{
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email,));
      }
    }else{
      // Local Storage
      deviceStorage.writeIfNull('IsFirstTime', true);

      // Check is it's first time launching the app
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() =>
      const LoginScreen()) // Redirect to Login Screen if not the first time
          : Get.offAll(() =>
      const OnBoardingScreen()); // Redirect to onBoarding Screen if it's the first time
    }

  }

/* ----------------------------------------- Email & Password sign-in --------------------------------------- */

  /// [EmailAuthetication] - SignIn
  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      /// createUserWithEmailAndPassword it is buildIn Function of firebase auth
      /// We are only returning  UserCredential in case we need it else
      /// if it is perform in success scenario to will be store in the firebase and move to toward the next-line to store the data
      /// else we it trow something it will be handle with custom exception and re throw them
      return _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [ReAuthetication] - ReAuthetication User
  /// [EmailVerification] - Mail Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
/* ----------------------------------------- Federated identity & social sign-in --------------------------------------- */

  /// [GoogleAuthetication] - Google
  /// [FacebookAuthetication] - Facebook
/* ----------------------------------------- ./end Federated identity & social sign-in  --------------------------------------- */

  /// [LogoutUser] - valid for only authetication
Future<void> logout()async {
  try {
    await FirebaseAuth.instance.signOut();
    Get.offAll(()=> const LoginScreen());
  }on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}
  /// Delete User - remove user Auth and FireStore Account
}
