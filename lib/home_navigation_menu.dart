import 'package:e_commerce_app/features/authentication/screens/home/home.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'utils/constants/colors.dart';


/// set state method Redraw everything whenever set state it called
/// to avoid the redraw and slowing the speed of the application we use GetX power
/// whenever the state is going to change when selectedIndex, it is going to only Redraw whatever inside the obs
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // creating instance of the NavigationController Instead of using new we use Get.Put
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      // Redraw screen we have to wrap the NavigationBar widget with obx widget
      bottomNavigationBar: Obx(
        // Obx is observer the obs is what is observed
        // in the child of the obx we use the single line function
        () => NavigationBar(
          height: 80,
          elevation: 0,
          // selectedIndex is Rx type of integer value to get exactly integer value we use .value property
          selectedIndex: controller.selectedIndex.value,
          /// (index) This index return which index is user selected and pass it to selectedIndex
          /// whenever the change in onDestinationSelected we assign  current (index) to selectedIndex
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark ? TColors.black : TColors.white,
          indicatorColor: dark ? TColors.white.withOpacity(0.2) : TColors.black.withOpacity(0.1),
        
        
          destinations: const [
            // Container(color: Colors.grey,),
            // Container(color: Colors.green,),
            // Container(color: Colors.red,),
            // Container(color: Colors.pink,),
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),

      /// In Body What is Selected in NavigationBar Should be Display
      body: Obx(
        ()=> controller.screen[
          controller.selectedIndex.value
        ],
      ),
    );
  }
}


/// To Avoid the stateful classes we use GetXController
class NavigationController extends GetxController {
  /// it return the selected index
  /// integer variable but wrap with the Get-x type of Rx value
  final Rx<int> selectedIndex = 0.obs;

  /// obs = observer variable

  // List of widgets
  final screen = [
    const HomeScreen(),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
    Container(color: Colors.blue,),
  ];
}

