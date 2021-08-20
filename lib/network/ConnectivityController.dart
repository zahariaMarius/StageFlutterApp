import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class ConnectivityController extends GetxController {
  final Connectivity _connectivity = Connectivity();
  bool _isOnline = false;
  bool get isOnline => _isOnline;

  @override
  void onInit() {
    initConnectivity();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  initConnectivity() async {
    ConnectivityResult result = await _connectivity.checkConnectivity();
    return _updateConnectionStatus(result);
  }

  _updateConnectionStatus(ConnectivityResult connectivityResult) {
    switch (connectivityResult) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
        _isOnline = true;
        break;
      case ConnectivityResult.none:
        _isOnline = false;
        Get.snackbar(
            'Network missing', 'You are offline, please reconnect to network.',
            duration: Duration(seconds: 5));
        break;
    }
  }
}
