import 'package:e_commerce_app/features/authentication/screens/login/login.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs; // current state of current index.
  // obs observer it is Rx type of int , it change the design without using  stateful widget
  /// Update Current Index when Page Scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page

  void dotNavigatorClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);

  }

  /// Update Current Index & jump to Next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      storage.write('IsFirstTime', false);

      /// For Checking the State in Run Application
      // if(kDebugMode){
      //   print('Get Storage Next Button');
      //   print(storage.read('IsFirstTime'));
      // }

      Get.offAll(const LoginScreen());
    }else{
     int page = currentPageIndex.value + 1;
     pageController.jumpToPage(page);

    }
  }

  // Update Current Index & Jump to the last Page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);

  }
}