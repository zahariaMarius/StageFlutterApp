import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:ripetizioni/data/model/user/User.dart';

part 'AuthApiService.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:8080/ripetizioniApi_war_exploded/')
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST('auth')
  Future<User> signIn(@Body() String userAuth);

  @POST('signup')
  Future<User> signUp(@Body() String user);

}