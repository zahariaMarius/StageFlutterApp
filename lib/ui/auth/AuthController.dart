import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ripetizioni/SessionManager.dart';
import 'package:ripetizioni/data/Resuorce.dart';
import 'package:ripetizioni/repository/AuthRepository.dart';

class AuthController extends GetxController {
  late AuthRepository _authRepository;

  RxBool loading = RxBool(false);

  AuthController(this._authRepository);

  signIn(String userAuth) {
    _authRepository.signIn(userAuth).listen((event) {
      switch (event.status) {
        case Status.LOADING:
          loading.value = true;
          break;
        case Status.SUCCESS:
          Get.find<SessionManager>().setUserLogged(event.data!);
          loading.value = false;
          Get.offAllNamed('/home');
          break;
        case Status.ERROR:
          loading.value = false;
          Get.snackbar('Sign in error', event.message!,
              duration: Duration(seconds: 5));
          break;
      }
    });
  }

  signUp(String user) {
    print(user);
    _authRepository.signUp(user).listen((event) {
      switch (event.status) {
        case Status.LOADING:
          loading.value = true;
          break;
        case Status.SUCCESS:
          loading.value = false;
          Get.dialog(AlertDialog(
            title: Text('Sign up successful'),
            content: Text(
                'Congratulations, you have successfully registered your PrivateLessons account.'),
            actions: [
              TextButton(
                  onPressed: () => Get.toNamed('/signIn'),
                  child: Text('Continue'))
            ],
          ));
          break;
        case Status.ERROR:
          loading.value = false;
          Get.snackbar('Sign up error', event.message!,
              duration: Duration(seconds: 5));
          break;
      }
    });
  }
}
