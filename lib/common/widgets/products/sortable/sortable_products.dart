import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:e_commerce_app/features/shop/models/product_model.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
            /// Map is property is going to return whatever we are going to return to this function, option or e is  going to represent each entity individually using loop
          ].map((option) => DropdownMenuItem(value: option,child: Text(option),)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSection,),
        /// Product
        TGridLayout(itemCount: 5, itemBuilder: (_,index) =>  TProductCartVertical(product: ProductModel.empty(),))
      ],
    );
  }
}