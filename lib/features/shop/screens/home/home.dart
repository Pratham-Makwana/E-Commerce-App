import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/common/widgets/Shimmers/vertical_product_shimmer.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/controllers/product_controller.dart';
import 'package:e_commerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Blue Part
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// ----- AppBar --------
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  /// ------------ SearchBar ----------------
                  /// In lib/common/widgets/custom_shapes/container/search_container.dart
                  TSearchContainer(
                    text: 'Search in Store',
                    onTap: () {},
                  ),

                  const SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  /// --------- Categories -------------
                  const Padding(
                    // Creating Scrollable ListView
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading Of the ListView Section
                        // lib/common/widgets/texts/section_heading.dart
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          color: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// --------- Categories ----------
                        // lib/features/authentication/screens/home/widgets/home_categories.dart
                        THomeCategories()
                      ],
                    ),
                  ),
                  //height: 400, Remove from the [TPrimaryHeaderContainer] because We want to take space that require or occupy by the Widget so removing the SizedBox
                  // To the Widget Proper we use SizeBox after the all the widget apply
                  const SizedBox(height: TSizes.spaceBtwSection ,),
                ],
              ),
            ),

            /// Body White Part -- 1. Banner With Sliders
            /// Carousel Slider with Dots
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              // lib/common/widgets/images
              child: Column(
                children: [
                  /// --------- Promo Slider ------------
                  const TPromoSlider(),
                  const SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),
                   TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(()=> const AllProducts()),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// -------- Popular Products -----------------
                  Obx(
                    (){
                      if(controller.isLoading.value) return const TVerticalProductSimmer();
                      if(controller.featuredProducts.isEmpty){
                        return Center(child: Text('No Data Found!',style: Theme.of(context).textTheme.bodyMedium));
                      }
                      return TGridLayout(
                        itemCount: controller.featuredProducts.length,
                        itemBuilder: (_, index) =>  TProductCartVertical(product: controller.featuredProducts[index],),
                      );
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
