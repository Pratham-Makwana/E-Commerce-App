import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_images.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ------ Heading ---------
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  /// User Profile Card
                  ListTile(
                    leading: TCircularImage(
                      width: 50,
                      height: 50,
                      padding: 0,
                      image: TImages.user,
                    ),
                    title: Text(
                      'Pratham Makwana',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: TColors.white),

                    ),
                    subtitle: Text(
                      'makwanapratham13@gmail.com',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .apply(color: TColors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ) ,
                    trailing: IconButton(onPressed: () {  }, icon: const Icon(Iconsax.edit,color: TColors.white,),),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),
                ],
              ),
            ),

            /// ------ Body ------------
          ],
        ),
      ),
    );
  }
}
