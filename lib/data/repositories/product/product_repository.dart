import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/data/repositories/categories/firebase_storage_service.dart';
import 'package:e_commerce_app/features/shop/models/product_model.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  /// Firebase instance for database interaction
  final _db = FirebaseFirestore.instance;

  /// Get limited featured products
  Future<List<ProductModel>> getFeaturedProducts()async{
    try{
      final snapshot = await _db.collection('Products').where('IsFeatured',isEqualTo: true).limit(4).get();
      // we have to convert it and map it with our model and return complete List of ProductModel
      // snapshot.docs return all the document and get the document on each document we going to run map
      // convert each document in to
      return snapshot.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
    }on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    }on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    }catch(e){
      throw 'something went wrong. Please try again';
    }
  }


  /// upload dummy data to Cloud Firebase
  Future<void> uploadDummyData(List<ProductModel> products) async {
    try {
      // Upload all the product along with their images
      final storage = Get.put(FirebaseStorageService());

      // Loop through each product
      for (var product in products) {
        // Get Image data link from local assets
        final thumbnail = await storage.getImageDataFromAssets(
            product.thumbnail);

        // Upload image and get its URl
        final url = await storage.uploadImageData(
            'Products/Images', thumbnail, product.thumbnail.toString());

        // Assign URl to product.thumbnail attribute
        product.thumbnail = url;

        // Product list of images
        if (product.images != null && product.images!.isNotEmpty) {
          List<String> imageUrl = [];
          for (var image in product.images!) {
            // Get image data link from local assets
            final assetImage = await storage.getImageDataFromAssets(image);

            // Upload image and get its URl
            final url = await storage.uploadImageData(
                'Products/Images', assetImage, image);

            // Assign URL to product.thumbnail attribute
            imageUrl.add(url);
          }
          product.images!.clear();
          product.images!.addAll(imageUrl);
        }
        
        if(product.productType == ProductType.variable.toString()){
          for(var variation in product.productVariations!){
            // Get image data link from local assets
            final assetImage = await storage.getImageDataFromAssets(variation.image);
            
            // Upload image and get its URL 
            final url = await storage.uploadImageData('Products/Images', assetImage, variation.image);

            // Assign URL to variation.image attribute
            variation.image = url;
          }
        }

        // Store product in Firestore
        await _db.collection('Products').doc(product.id).set(product.toJson());
      }
    }on FirebaseException catch(e){
      throw e.message!;
    }on SocketException catch(e){
      throw e.message;
    }on PlatformException catch(e){
      throw e.message!;
    }catch(e){
      throw e.toString();
    }
  }
}
