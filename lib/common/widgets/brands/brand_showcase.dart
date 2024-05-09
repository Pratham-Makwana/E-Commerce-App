import 'package:e_commerce_app/common/widgets/brands/brand_cart.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.grey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child:   Column(
        children: [
          /// Brand With Product Count
          const TBrandCart(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),

          Row(
            children: images.map((image) => brandTopProductImageWidget(image , context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child:  Image(fit: BoxFit.contain,image: AssetImage(image),),
      ),
    );
  }
}