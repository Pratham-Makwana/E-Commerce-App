import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_images.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/features/shop/controllers/product/product_controller.dart';
import 'package:e_commerce_app/features/shop/models/product_model.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final controller = ProductController.instance;
    final salePercentage =
        controller.calculateSalePercentage(product.price, product.salePrice);
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sales Price
        Row(
          children: [
            /// Sales
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '$salePercentage%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),

            /// Price
            if (product.productType == ProductType.single.toString() &&
                product.salePrice > 0.0)
              // If it true display actual price
              Text(
                '\$${product.price}',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough),
              ),
            if (product.productType == ProductType.single.toString() &&
                product.salePrice > 0.0)
              const SizedBox(
                width: TSizes.spaceBtwItems / 2,
              ),
            // Sales Price if condition if true
            TProductPriceText(
              price: controller.getProductPrice(product),
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        /// Title
        TProductTitleText(title: product.title),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status:'),
            const SizedBox(
              width: TSizes.spaceBtwItems / 1.5,
            ),
            Text(
              controller.getProductStockStatus(product.stock),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        /// Brand
        Row(
          children: [
            TCircularImage(
              image: product.brand != null ? product.brand!.image : '',
              height: 32,
              width: 32,
              overlayColor: dark ? TColors.white : TColors.dark,
            ),
             TBrandTitleWithVerifiedIcon(
              title:product.brand != null ? product.brand!.name : '',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
