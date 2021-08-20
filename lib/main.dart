import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import 'package:ripetizioni/SessionManager.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';
import 'package:ripetizioni/data/model/classes/Classes.dart';
import 'package:ripetizioni/data/model/subject/Subject.dart';
import 'package:ripetizioni/data/model/user/User.dart';

import 'package:ripetizioni/di/AuthPageBindings.dart';
import 'package:ripetizioni/di/BookingPageBindings.dart';
import 'package:ripetizioni/di/ConnectivityBindings.dart';
import 'package:ripetizioni/di/HomePageBindings.dart';
import 'package:ripetizioni/network/DioService.dart';
import 'package:ripetizioni/ui/auth/AuthMiddleware.dart';
import 'package:ripetizioni/ui/auth/SignInPage.dart';
import 'package:ripetizioni/ui/auth/SignUpPage.dart';
import 'package:ripetizioni/ui/booking/BookingPage.dart';
import 'package:ripetizioni/ui/home/HomePage.dart';

Future<void> main() async {
  await GetStorage.init('session');
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  Directory directory = await getApplicationDocumentsDirectory();
  await Get.putAsync<Dio>(() => DioService().init());
  Get.put<SessionManager>(SessionManager());
  await Hive.initFlutter(directory.path);
  Hive.registerAdapter(BookingAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(ClassesAdapter());
  Hive.registerAdapter(SubjectAdapter());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Private Lessons',
      initialRoute: '/signIn',
      defaultTransition: Transition.fadeIn,
      initialBinding: ConnectivityBindings(),
      getPages: [
        GetPage(
            name: '/signIn',
            page: () => SignInPage(),
            binding: AuthPageBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: '/signUp',
            page: () => SingUpPage(),
            binding: AuthPageBindings()),
        GetPage(
            name: '/home', page: () => HomePage(), binding: HomePageBindings()),
        GetPage(
            name: '/booking',
            page: () => BookingPage(),
            binding: BookingPageBindings())
      ],
    );
  }
}
