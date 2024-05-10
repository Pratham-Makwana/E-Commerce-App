import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/popups/full_screen_loader.dart';
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
  final email = TextEditingController(); // Controller for email input
  final lastname = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username  input
  final password = TextEditingController(); // Controller for password input
  final firstname = TextEditingController(); // Controller for first name input
  final phoneNumber = TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form key for form validation

  /// -- SIGNUP
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog('We are processing you information...', TImages.productsSaleIllustration);
      // Internet Connectivity
      // Form Validation
      // Privacy Policy Check
      // Register user in the  FireBase Authentication & Save user data in Firebase
      // Save Authenticated user data in the Firebase Firestore
      // Shoe Success Message
      // Move to Verify Email
    } catch (e) {
      // Show some Generic Error to the user
    } finally {
      // Remove Loader
    }
  }
}


