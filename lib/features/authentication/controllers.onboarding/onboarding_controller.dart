import 'package:get/get.dart';



class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// variables

  /// Update Current Index when Page Scroll

  void updatePageIndicator(index){}

  /// Jump to the specific dot selected page

  void dotNavigatorClick(index){}

  /// Update Current Index & jump to Next page
  void nextPage(){}

  // Update Current Index & Jump to the last Page
  void skipPage(){}
}