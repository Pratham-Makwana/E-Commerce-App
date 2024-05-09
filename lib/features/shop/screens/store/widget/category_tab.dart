import 'package:e_commerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Brands
                const TBrandShowCase(
                  images: [
                    TImages.productImage1,
                    TImages.productImage2,
                    TImages.productImage3,
                  ],
                ),
                const TBrandShowCase(
                  images: [
                    TImages.productImage1,
                    TImages.productImage2,
                    TImages.productImage3,
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// Products
                TSectionHeading(
                  title: 'you might like ',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCartVertical()),
                const SizedBox(
                  height: TSizes.spaceBtwSection,
                ),
              ],
            ),
          ),
        ]);
  }
}
