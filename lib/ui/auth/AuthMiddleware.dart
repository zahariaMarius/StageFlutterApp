import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/SessionManager.dart';

class AuthMiddleware extends GetMiddleware {
  final SessionManager _sessionManager = Get.find<SessionManager>();

  @override
  RouteSettings? redirect(String? route) {
    RouteSettings? routeSettings;
    if(_sessionManager.isLogged()) {
      _sessionManager.loadLoggedUser();
      routeSettings = RouteSettings(name: '/home');
    }
    return routeSettings;
  }

}
