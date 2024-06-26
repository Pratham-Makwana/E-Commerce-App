import 'package:e_commerce_app/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// --- Selected Attributes Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price, and Stock Status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),

                          /// Sales Price
                          const TProductPriceText(
                            price: '20',
                          )
                        ],
                      ),

                      /// Stocks
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Details
              const TProductTitleText(
                title:
                    'this is the description of the Product and it can go up to max 4 lines',
                maxLines: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: "Colors",
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,

              /// In The ChoiceChip in the horizonatal  they are not scrollable but They reached the end of the screen they move toward the new roe
              children: [
                TChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: "Sizes",
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
