import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String name;
  String id;
  String image;
  String parentId;
  bool isFeatured;

  CategoryModel(
      {required this.name,
      required this.id,
      required this.image,
      this.parentId = '',
      required this.isFeatured});

  /// Empty Helper Function
  static CategoryModel empty() =>
      CategoryModel(name: '', id: '', image: '', isFeatured: false);

  /// Convert model to Json Structure so that you can store data in Firebase
  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'Image': image,
      'ParentId': parentId,
      'IsFeatured': isFeatured,
    };
  }
  // to create the multiple constructor in dart we use factory method for Name Constructor
  /// Map Json oriented document snapshot from Firebase to UserModel
  factory CategoryModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      // Map Json Record to the Model
      return CategoryModel(
        id: document.id,
        name: data['Name'] ?? '',
        image: data['Image'] ?? '',
        parentId: data['ParentId'] ?? '',
        isFeatured: data['isFeatured'] ?? false,
      );
    } else {
      return CategoryModel.empty();
    }
  }
}
