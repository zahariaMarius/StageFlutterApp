import 'package:hive/hive.dart';
import 'package:ripetizioni/data/model/user/User.dart';


class UserDao {
  final String _boxName = 'userBox';

  insert(User user) async {
    Box box = await Hive.openBox<User>(_boxName);
    await box.clear();
    await box.add(user);
    await box.close();
  }

  Future<User> getUser() async {
    Box<User> box = await Hive.openBox<User>(_boxName);
    User user = box.get(0, defaultValue: User())!;
    await box.close();
    return user;
  }

}
