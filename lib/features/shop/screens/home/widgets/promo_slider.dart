import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banner,
  });

    final List<String> banner;
  @override
  Widget build(BuildContext context) {
    // Creating the new instance of the HomeController Class
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            // When Page Going to change it give the new index to the to the this function updatePageIndication
            onPageChanged: (index , _) => controller.updatePageIndication(index),
            viewportFraction: 1,
          ),
          /// Instead repeating Image Again & Again User the list of String
          items: banner.map((url) => TRoundedImage(imageUrl: url)).toList(),
          // items: const [
          //   TRoundedImage(
          //     imageUrl: TImages.promoBanner1,
          //   ),
          //   TRoundedImage(
          //     imageUrl: TImages.promoBanner2,
          //   ),
          //   TRoundedImage(
          //     imageUrl: TImages.promoBanner3,
          //   ),
          // ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          ()=>
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0 ; i < 3 ; i++)
                   TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primary : TColors.grey,
                  ),
              ],
            ),

        )
      ],
    );
  }
}