import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce_app/common/widgets/products/product_cart/product_cart_horizontal.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Sports',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(
                imageUrl: TImages.banner3,
                width: double.infinity,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              /// Sub-Categories
              Column(
                children: [
                  TSectionHeading(
                    title: 'Sport shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                        itemBuilder: (context, index) => const TProductCardHorizonatal(),
                      separatorBuilder: (_,__) => const SizedBox(width: TSizes.spaceBtwItems,),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
