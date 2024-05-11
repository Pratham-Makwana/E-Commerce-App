import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/features/personalization/models/user_model.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/format_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Repository class  for  User-Related operation
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Function to save user data to Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try{

      /// If you don't pass doc(user.id) (Document id it will be  random generate Document id)
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const TFormatException();
    }on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    }catch(e){
      throw 'Something went wrong. Please try again';
    }
  }
}
