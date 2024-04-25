import 'dart:ffi';

import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import 'widgets/home_appbar.dart';

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
                  const TSearchContainer(text: 'Search in Store'),
                  SizedBox(
                    height: TSizes.spaceBtwSection,
                  ),

                  /// Categories
                  Padding(
                    // Creating Scrollable ListView
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: const Column(
                      children: [
                        /// Heading Of the ListView Section
                        /// lib/common/widgets/texts/section_heading.dart
                        TSectionHeading(title: 'Popular Categories',showActionButton: false,)
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

