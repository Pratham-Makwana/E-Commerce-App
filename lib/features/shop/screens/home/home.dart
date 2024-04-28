import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  /// ------------ SearchBar ----------------
                  /// In lib/common/widgets/custom_shapes/container/search_container.dart
                  TSearchContainer(
                    text: 'Search in Store',
                    onTap: () {},
                  ),

                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  /// --------- Categories -------------
                  Padding(
                    // Creating Scrollable ListView
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading Of the ListView Section
                        // lib/common/widgets/texts/section_heading.dart
                        const TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          color: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// --------- Categories ----------
                        // lib/features/authentication/screens/home/widgets/home_categories.dart
                        const THomeCategories()
                      ],
                    ),
                  )
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
                  const TPromoSlider(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),
                   TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// -------- Popular Products -----------------
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCartVertical(),
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
