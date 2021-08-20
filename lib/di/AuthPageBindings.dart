import 'package:get/get.dart';
import 'package:ripetizioni/db/UserDao.dart';
import 'package:ripetizioni/network/apiservice/auth/AuthApiService.dart';
import 'package:ripetizioni/repository/AuthRepository.dart';
import 'package:ripetizioni/ui/auth/AuthController.dart';

class AuthPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController(AuthRepository(AuthApiService(Get.find()), UserDao())));
  }
}