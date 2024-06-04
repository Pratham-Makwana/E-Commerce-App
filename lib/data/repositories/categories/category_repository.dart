import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// Class For Deal With The FireStore
class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  /// Variables
  final _db = FirebaseFirestore.instance;

  /// Get All Categories
  Future<List<CategoryModel>?> getAllCategories() async {
    try {
      // Get the add the add From the FirebaseFirestore
      final snapshot = await _db.collection('Categories').get();
      // Once we have all the data we want extract single entry/single document convert that json into model and paste that single collection in to single model return using complete list.
      // we want to map this json one by one in to CategoryModel and return the complete list
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }

  /// Get Sub Categories

  /// Upload Categories to Cloud Firebase
}
