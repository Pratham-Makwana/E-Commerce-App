import 'package:e_commerce_app/utilis/constants/colors.dart';
import 'package:e_commerce_app/utilis/constants/image_strings.dart';
import 'package:e_commerce_app/utilis/constants/sizes.dart';
import 'package:flutter/material.dart';


class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: const AssetImage(TImages.google),
            ),
          ),
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: const AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}