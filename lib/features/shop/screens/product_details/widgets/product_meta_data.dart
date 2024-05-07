import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_images.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';




class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
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
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems,),

            /// Price
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: TSizes.spaceBtwItems / 2,),
            const TProductPriceText(price: '175',isLarge: true,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        /// Title
        const TProductTitleText(title: 'Nike Sport TShirt'),
        SizedBox(height: TSizes.spaceBtwItems / 1.5,),
        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status:'),
            SizedBox(width: TSizes.spaceBtwItems / 1.5,),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium  ,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5,),
        
        /// Brand
        Row(
          children: [
            TCircularImage(image: TImages.shoeIcon,height: 32,width: 32,overlayColor: dark ? TColors.white : TColors.dark,),
            const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
