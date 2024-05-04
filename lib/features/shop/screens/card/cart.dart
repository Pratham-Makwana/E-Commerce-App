import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            /// Error : Vertical Viewport wad given unbounded height.
            /// To Avoid Error, In ListView remember to use shrinkWrap to true ,
            /// So it only take space of his children widgets
        
            shrinkWrap: true,
            /// Problem is when item is increased scrollview is not working because we are using two scrollview widget
            /// [SingleChildScrollView] and [ListView] to over come the problem you can remove [SingleChildScrollView] or
            /// add physics: const NeverScrollableScrollPhysics(), in [ListView].
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (_, __) =>
                SizedBox(height: TSizes.spaceBtwSection),
            itemBuilder: (_, index) => Column(
              children: [
                const TCartItem(),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Extra Space
                    Row(
                      children: [
                        SizedBox(width: 70,),
                        TProductQuantityWithAddRemoveButton(),
                      ],
                    ),
                    /// Add Remove Buttons
        
                    TProductPriceText(price: '256'),
        
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {  }, child: const Text('Checkout \$256.0'),),
      ),
    );
  }
}


