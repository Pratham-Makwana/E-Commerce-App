import 'package:e_commerce_app/utilis/constants/image_strings.dart';
import 'package:e_commerce_app/utilis/constants/sizes.dart';
import 'package:e_commerce_app/utilis/constants/text_strings.dart';
import 'package:e_commerce_app/utilis/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ------ Horizontal Scrollable Pages
          PageView(
            children: [
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onBoardingTitle1, subtitle: TTexts.onboardingSubTitle1,),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onBoardingTitle2, subtitle: TTexts.onboardingSubTitle2,),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onBoardingTitle3, subtitle: TTexts.onboardingSubTitle3,),
            ],
          ),
          // ------ Skip Button

          // ------ Dot Navigation SmoothPageIndicator

          // ------ Circular Button
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image , title , subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
