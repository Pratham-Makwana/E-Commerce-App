import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/personalization/models/user_model.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  // getter which returning SignUpController instance of this class.
  // Regular instance like, SignUpController();
  // Reason to use GetxController because it save lot of memory for us we not crating instance again and again
  // Create the instance using get.put method once instance is crated that instance remain inside the memory of  the application
  // get.find method is find already created instance and return the SignUpController
  static SignupController get instance => Get.find();

  /// Variable
  final hidePassword = true.obs; // Observable for hiding/showing password
  final privacyPolicy = true.obs; // Observable for hiding/showing password
  final email = TextEditingController(); // Controller for email input
  final lastname = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username  input
  final password = TextEditingController(); // Controller for password input
  final firstname = TextEditingController(); // Controller for first name input
  final phoneNumber =
      TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  /// -- SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing you information...',
          TImages.productsSaleIllustration);
      // Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      ;
      // Privacy Policy Check

      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(title: 'Accept Privacy Policy', message: 'In Order to create account, you must have to read and accept the Privacy Policy and Terms of use ');
      }

      // Register user in the  FireBase Authentication & Save user data in Firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Save Authenticated user data in the Firebase Firestore
      /// To save the record in Firebase Firestore we first have to map the data in userModel
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstname.text.trim(),
          lastName: lastname.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');


      /// Above Model is pass to the function to save the data

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show Success Message
      TLoaders.successSnackBar(title: 'Congratulation', message: 'Your account has been created! Verify email to continue');

      // Move to Verify Email
      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();
      // Show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
