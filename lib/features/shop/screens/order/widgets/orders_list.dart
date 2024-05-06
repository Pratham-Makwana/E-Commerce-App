import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_,__) => SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_,index) => TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          children: [
            /// - Row -1
            Row(
              children: [
                ///  1- Icon
                const Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems / 2,),

                /// 2- Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,fontWeightDelta: 1),),
                      Text('07 Nov, 2024',style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                /// 3- Icon
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34,size: TSizes.iconSm,),)
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems,),
            /// - Row -1
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///  1- Icon
                      const Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),

                      /// 2- Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',style: Theme.of(context).textTheme.labelMedium),
                            Text('[#256f2]',style: Theme.of(context).textTheme.titleLarge,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      ///  1- Icon
                      const Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),

                      /// 2- Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',style: Theme.of(context).textTheme.labelMedium),
                            Text('03 Feb 2025',style: Theme.of(context).textTheme.titleLarge,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
