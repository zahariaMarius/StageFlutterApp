import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ripetizioni/data/model/user/User.dart';
import 'package:ripetizioni/db/BookingDao.dart';

class SessionManager extends GetxService {
  User? _user;
  User? get user => _user;
  BookingDao _bookingDao = BookingDao();

  loadLoggedUser() {
    var jsonUser = {'data': GetStorage('session').read('user')};
    _user = User.fromJson(jsonUser);
  }

  setUserLogged(User user) {
    _user = user;
    GetStorage('session').write('user', user);
    GetStorage('session').write('isLogged', true);
  }

  bool isLogged() => GetStorage('session').read('isLogged') ?? false;

  logOut() {
    _bookingDao.clearBox();
    GetStorage('session').write('isLogged', false);
    Get.offAllNamed('/signIn');
  }
}
