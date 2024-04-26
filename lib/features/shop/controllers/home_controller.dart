
import 'package:get/get.dart';

/// This HomeController is Use for the imageController to show the current index image
/// Banner Image of The Home After the Blue Container
class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final  carousalCurrentIndex = 0.obs;

  void updatePageIndication(index){
    carousalCurrentIndex.value = index;
  }

}