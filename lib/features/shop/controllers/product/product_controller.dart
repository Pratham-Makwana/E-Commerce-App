import 'package:e_commerce_app/data/repositories/product/product_repository.dart';
import 'package:e_commerce_app/features/shop/models/product_model.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  final isLoading = false.obs;
  final productRepository = Get.put(ProductRepository());
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchFeaturedProducts();
    super.onInit();
  }

  Future fetchFeaturedProducts() async {
    try {
      // Shoe Loader while Loading Products
      isLoading.value = true;

      // Fetch Products
      final products = productRepository.getFeaturedProducts();
      // Assign Products
      featuredProducts.assignAll(products as Iterable<ProductModel>);
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  /// Get the product price or price range for variations
  String getProductPrice(ProductModel product) {
    double smallestPrice = double.infinity; // We Going to Downward The Price
    double largestPrice = 0.0; // We are going to upward the price

    // If no variations exits, return the simple price or sale price
    if (product.productType == ProductType.single.toString()) {
      return (product.salePrice > 0 ? product.salePrice : product.price)
          .toString();
    } else {
      // Calculate the smallest and largest prices among variations
      for (var variation in product.productVariations!) {
        // Determine the price to consider (sale price if available, otherwise regular price)
        double priceToConsider =
            variation.salePrice > 0.0 ? variation.salePrice : variation.price;

        // Update smallest and largest prices
        if (priceToConsider < smallestPrice) {
          smallestPrice = priceToConsider;
        }

        if (priceToConsider > largestPrice) {
          largestPrice = priceToConsider;
        }
      }

      // If smallest and largest prices are the same, return a single price
      if (smallestPrice.isEqual(largestPrice)) {
        return largestPrice.toString();
      } else {
        // Otherwise, return a price range
        return '$smallestPrice - \$$largestPrice';
      }
    }
  }

  /// -- Calculate Discount Percentage
 String? calculateSalePercentage(double originalPrice,double? salePrice){
    if(salePrice == null || salePrice <= 0.0) return null;
    if(originalPrice <= 0) return null;

    double percentage = ((originalPrice - salePrice) / originalPrice) * 100;
    return percentage.toStringAsFixed(0); // Make Percentage Round Off Not In Point Number
 }

 /// -- Check Product Stock Status
  String getProductStockStatus(int stock){
    return stock > 0 ? 'In Stock' : 'Out of Stock';
  }
}
