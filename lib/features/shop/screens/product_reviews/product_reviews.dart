import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Review & Rating'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Rating and review are verified and are form people who use same type of device that you use"),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Overall Product Rating
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text('12966',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSection,),

              /// User Review List
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


