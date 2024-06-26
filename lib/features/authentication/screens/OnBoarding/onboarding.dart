import 'package:e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/OnBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/OnBoarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens/OnBoarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/OnBoarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// put create new instance of the OnBoardingController when ever we use get.instance or get.find
    /// we get already created instance in any other class so don't have to create instance again and again
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          // ------ Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onboardingSubTitle3,
              ),
            ],
          ),
          // ------ Skip Button
          const OnBoardingSkip(),
          // ------ Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // ------ Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}


