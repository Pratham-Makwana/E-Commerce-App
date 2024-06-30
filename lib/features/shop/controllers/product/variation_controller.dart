import 'package:e_commerce_app/features/shop/controllers/product/images_controller.dart';
import 'package:e_commerce_app/features/shop/models/product_model.dart';
import 'package:e_commerce_app/features/shop/models/product_variation_model.dart';
import 'package:get/get.dart';

class VariationController extends GetxController {
  static VariationController get instance => Get.find();


  /// -- Variables
  // selectedAttributes is RxMap it first take key as color and value will be color its self like green, black etc..
  // because it Map we can add another key which is size and value wil be another attribute. this way we can add as many attribute as we want
  RxMap selectedAttributes = {}.obs;
  RxString variationStockStatus = ''.obs;
  Rx<ProductVariationModel> selectedVariation = ProductVariationModel.empty().obs;



  /// -- Select Attribute, and Variation
  void onAttributeSelected(ProductModel product, attributeName, attributeValue){
    // When attribute is selected we will first add that attribute to the local selectedAttributes
    final selectedAttributes = Map<String,dynamic>.from(this.selectedAttributes);
    selectedAttributes[attributeName] = attributeValue;
    this.selectedAttributes[attributeName] = attributeValue;

    final selectedVariation = product.productVariations!.firstWhere((variation) => _isSameAttributeValues(variation.attributeVales, selectedAttributes),
        orElse: ()=>ProductVariationModel.empty());

    // Show the selected Variation image as a main page
    if(selectedVariation.image.isNotEmpty){
      ImageController.instance.selectedProductImage.value = selectedVariation.image;
    }

    // Assign Selected Variation
    this.selectedVariation.value = selectedVariation;

    // Update selected product variation status
    getProductVariationStockStatus();
  }

  bool _isSameAttributeValues(Map<String,dynamic> variationAttributes,Map<String,dynamic> selectedAttributes){
    // variationAttributes is in firebase database and it compare with the selectedAttributes
    // If selectedAttributes contain 3 attributes and current variation contains 2 then return false. it means current attributes are not selected
    if(variationAttributes.length != selectedAttributes.length) return false;

    // If any of the attribute is different then return false. e.g. [Green, Large] x [Green, Small]
    for(final key in variationAttributes.keys){
      // Attribute[key] = Value which could be [Green,small,EU32] etc.
      if(variationAttributes[key] != selectedAttributes[key]) return false;
    }


    return true;
  }

  /// -- Check Attribute availability / Stock in Variation
  Set<String?> getAttributesAvailabilityInVariation(
      List<ProductVariationModel> variation, String attributeName) {
    // pass the variations to check which attributes are available and stock is not o
    final availableVariationAttributeValue = variation
        .where((variation) =>
            // Check Empty / Out of Stock Attributes
            variation.attributeVales[attributeName] != null &&
            variation.attributeVales[attributeName]!.isNotEmpty &&
            variation.stock > 0).
        // Fetch all non-empty attribute of variations
        map((variation) => variation.attributeVales[attributeName])
        .toSet();

    return availableVariationAttributeValue;
  }

  String getVariationPrice(){
    return (selectedVariation.value.salePrice > 0 ? selectedVariation.value.salePrice : selectedVariation.value.price).toString();
  }

  /// --Check Product Variation Stock Status
  void getProductVariationStockStatus() {
    variationStockStatus.value =
        selectedVariation.value.stock > 0 ? 'In Stock' : 'Out of Stock';
  }

  /// -- Reset Selected Attributes when switching products
  void resetSelectedAttributes() {
    selectedAttributes.clear();
    variationStockStatus.value = '';
    selectedVariation.value = ProductVariationModel.empty();
  }
}
