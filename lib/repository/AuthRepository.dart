import 'package:get_storage/get_storage.dart';
import 'package:ripetizioni/data/Resuorce.dart';
import 'package:ripetizioni/data/model/user/User.dart';
import 'package:ripetizioni/db/UserDao.dart';
import 'package:ripetizioni/network/NetworkBoundResource.dart';
import 'package:ripetizioni/network/apiservice/auth/AuthApiService.dart';

class AuthRepository {
  AuthApiService _authApiService;
  UserDao _userDao;

  AuthRepository(this._authApiService, this._userDao);

  Stream<Resource<User>> signIn(String userAuth) {
    return NetworkBoundResource<User, User>().asStream(
        createCall: () => _authApiService.signIn(userAuth),
        shouldFetch: (data) => true,
        loadFromDb: () => Future(() => _userDao.getUser()),
        saveCallResult: (data) => _userDao.insert(data)
    );
  }

  Stream<Resource<User>> signUp(String user) {
    return NetworkBoundResource<User, User>().asStream(
        createCall: () => _authApiService.signUp(user),
        shouldFetch: (data) => true,
        loadFromDb: () => Future.value(User()),
        saveCallResult: (data) => Future.value()
    );
  }
}
