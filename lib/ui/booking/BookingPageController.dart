import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/SessionManager.dart';
import 'package:ripetizioni/data/Resuorce.dart';
import 'package:ripetizioni/data/model/classes/Classes.dart';
import 'package:ripetizioni/repository/BookingRepository.dart';
import 'package:ripetizioni/repository/ClassesRepository.dart';

class BookingPageController extends GetxController {
  ClassesRepository _classesRepository;
  BookingRepository _bookingRepository;
  BookingPageController(this._classesRepository, this._bookingRepository);

  final RxList<Classes> _classesList = RxList();
  RxList<Classes> get classesList => _classesList;

  RxBool loading = RxBool(false);

  showConfirmDialog(Classes classes) {
    Get.dialog(
      AlertDialog(
        title: Text('Booking confirmation?'),
        content: Text('Do you confirm to book the following lesson?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(Get.context!),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () => _bookSelectedClass(classes),
            child: Text('Confirm'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  @override
  void onInit() {
    _classesRepository
        .getAllClassesBySubject(Get.arguments['id'])
        .listen((event) {
      switch (event.status) {
        case Status.LOADING:
          loading.value = true;
          break;
        case Status.SUCCESS:
          print(event.data!.data);
          _classesList.addAll(event.data!.data);
          loading.value = false;
          break;
        case Status.ERROR:
          loading.value = false;
          Get.snackbar('Error', event.message!, duration: Duration(seconds: 5));
          break;
      }
    });
  }

  _bookSelectedClass(Classes classes) {
    Navigator.pop(Get.context!);
    var body = {'userId': Get.find<SessionManager>().user!.id!, 'classId': classes.id};
    _bookingRepository.bookClass(body.toString()).listen((event) {
      switch(event.status) {
        case Status.LOADING:
          loading.value = true;
          break;
        case Status.SUCCESS:
          loading.value = false;
          Get.offNamed('/home', arguments: true);
          break;
        case Status.ERROR:
          loading.value = false;
          Get.snackbar('Booking error', event.message!, duration: Duration(seconds: 5));
          break;
      }
    });
  }
}
