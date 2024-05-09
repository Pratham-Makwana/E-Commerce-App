import 'package:e_commerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        TCircularIcon(
          icon: Iconsax.minus,
          height: 32,
          width: 32,
          size: TSizes.md,
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
          color: dark ? TColors.white : TColors.black,
          onPressed: (){},
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),
         TCircularIcon(
          icon: Iconsax.add,
          height: 32,
          width: 32,
          size: TSizes.md,
          backgroundColor:  TColors.primary,
          color:  TColors.white,
          onPressed: (){},
        ),
      ],
    );
  }
}