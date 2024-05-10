

import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:get/get.dart';

class GeneralBinding extends Bindings{
  @override
  void dependencies() {
    // when ever application run it will automatically trigger this GeneralBinding and NetworkManger
    // TODO: implement dependencies
    Get.put(NetworkManager());
  }

}