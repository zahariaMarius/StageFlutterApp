import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/SessionManager.dart';

import 'package:ripetizioni/data/Resuorce.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';
import 'package:ripetizioni/data/model/subject/Subject.dart';
import 'package:ripetizioni/repository/BookingRepository.dart';
import 'package:ripetizioni/repository/ClassesRepository.dart';

class HomePageController extends GetxController {
  SessionManager _sessionManager;
  BookingRepository _bookingRepository;
  ClassesRepository _classesRepository;
  HomePageController(this._bookingRepository, this._classesRepository, this._sessionManager);

  RxBool loading = RxBool(false);

  final RxInt _selectedBarItem = RxInt(0);
  set selectedBarItem(value) => _selectedBarItem.value = value;
  int get selectedBarItem => _selectedBarItem.value;

  final RxList<Booking> _bookingList = RxList();
  RxList<Booking> get bookingList => _bookingList;

  final RxList<Subject> _subjectList = RxList();
  RxList<Subject> get subjectList => _subjectList;

  @override
  void onInit() {
    refreshBookings();
  }

  refreshBookings() {
    selectedBarItem = 0;
    _bookingRepository.getAllBookings(_sessionManager.user!.id!).listen((event) {
      switch (event.status) {
        case Status.LOADING:
          loading.value = true;
          if(event.data != null && event.data!.data.isNotEmpty) {
            print('IN LOAD != DA NULL --> ' + event.data.toString());
            _bookingList.clear();
            _bookingList.addAll(event.data!.data);
            print('LIST IN LOAD ---> ' + _bookingList.toString());
          }
          break;
        case Status.SUCCESS:
          _bookingList.clear();
          _bookingList.addAll(event.data!.data);
          print('LIST IN SUCCESS ---> ' + _bookingList.toString());
          loading.value = false;
          break;
        case Status.ERROR:
          loading.value = false;
          Get.snackbar('Error', event.message!, duration: Duration(seconds: 5));
          break;
      }
    });
    getGroupedClassesBySubject();
  }

  updateSelectedBooking(int bookingId, String status) {
    Navigator.pop(Get.context!);
    _bookingRepository
        .updateBooking(bookingId, status)
        .listen((event) {
      switch (event.status) {
        case Status.LOADING:
          loading.value = true;
          break;
        case Status.SUCCESS:
          _bookingList.clear();
          _bookingList.addAll(event.data!.data);
          print('DOPO UPDATE --> ' + _bookingList.toString());
          loading.value = false;
          break;
        case Status.ERROR:
          loading.value = false;
          Get.snackbar('Manage failed', event.message!, duration: Duration(seconds: 5));
          break;
      }
    });
    getGroupedClassesBySubject();
  }

  getGroupedClassesBySubject() {
    _classesRepository.getGroupedClassesBySubject().listen((event) {
      switch(event.status) {
        case Status.LOADING:
          loading.value = true;
          if(event.data != null) {
            _subjectList.clear();
            _subjectList.addAll(event.data!.data);
          }
          break;
        case Status.SUCCESS:
          _subjectList.clear();
          _subjectList.addAll(event.data!.data);
          loading.value = false;
          break;
        case Status.ERROR:
          loading.value = false;
          break;
      }
    });
  }

}