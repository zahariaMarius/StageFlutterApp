import 'package:get/get.dart';
import 'package:ripetizioni/network/ConnectivityController.dart';

class ConnectivityBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ConnectivityController>(ConnectivityController());
  }

}