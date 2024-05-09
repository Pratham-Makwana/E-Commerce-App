import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                /// You can Use The TCircularImage(image: image) that we already crated
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage2),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// Review
        Row(
          children: [
            const TRatingBarIndicator(
              rating: 4,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        const ReadMoreText(
          'The user interface of the app is intuitive. I was able to navigate and make purchase seamlessly. Great Job.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              color: TColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          lessStyle: TextStyle(
              color: TColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Google',style: Theme.of(context).textTheme.titleMedium,),
                  Text(
                    '02 Nov, 2023',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              const ReadMoreText(
                'The user interface of the app is intuitive. I was able to navigate and make purchase seamlessly. Great Job.',
                trimLines: 1,
                trimMode: TrimMode.Line,
                trimExpandedText: 'show less',
                trimCollapsedText: 'show more',
                moreStyle: TextStyle(
                    color: TColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                lessStyle: TextStyle(
                    color: TColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwSection,),
      ],
    );
  }
}
