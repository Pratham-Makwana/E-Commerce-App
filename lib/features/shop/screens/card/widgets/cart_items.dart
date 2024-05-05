import 'package:e_commerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      /// Error : Vertical Viewport wad given unbounded height.
      /// To Avoid Error, In ListView remember to use shrinkWrap to true ,
      /// So it only take space of his children widgets

      shrinkWrap: true,

      /// Problem is when item is increased scrollview is not working because we are using two scrollview widget
      /// [SingleChildScrollView] and [ListView] to over come the problem you can remove [SingleChildScrollView] or
      /// add physics: const NeverScrollableScrollPhysics(), in [ListView] or Remove Both.

      itemCount: 2,
      separatorBuilder: (_, __) => SizedBox(height: TSizes.spaceBtwSection),
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButton)
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Extra Space
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                /// Add Remove Buttons

                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
