import 'dart:ffi';

import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  const THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  /// SearchBar
                  /// In lib/common/widgets/custom_shapes/container/search_container.dart
                   TSearchContainer(text: 'Search in Store',onTap: (){},),
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  /// Categories
                  Padding(
                    // Creating Scrollable ListView
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading Of the ListView Section
                        /// lib/common/widgets/texts/section_heading.dart
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          color: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// Categories
                        /// lib/features/authentication/screens/home/widgets/home_categories.dart
                        const THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




