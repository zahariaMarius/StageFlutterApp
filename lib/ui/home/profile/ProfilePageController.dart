import 'package:get/get.dart';
import 'package:ripetizioni/SessionManager.dart';
import 'package:ripetizioni/components/BookingDetailsBottomSheet.dart';
import 'package:ripetizioni/data/model/booking/Booking.dart';
import 'package:ripetizioni/data/model/user/User.dart';
import 'package:ripetizioni/ui/home/HomePageController.dart';

class ProfilePageController extends GetxController {
  final RxList<Booking> allBookingList =
      Get.find<HomePageController>().bookingList;

  RxList<Booking> get bookingList => RxList(
      allBookingList.where((booking) => booking.status != 'active').toList());

  Rx<User> _user = User().obs;
  Rx<User> get user => _user;

  showBookingDetails(int index) {
    Get.bottomSheet(BookingDetailsBottomSheet(bookingList[index]));
  }

  @override
  void onInit() {
    _user.value = Get.find<SessionManager>().user!;
  }
}
