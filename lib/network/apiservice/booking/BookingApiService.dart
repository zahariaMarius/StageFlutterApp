import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:ripetizioni/data/model/bookinglist/BookingList.dart';

part 'BookingApiService.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:8080/ripetizioniApi_war_exploded/')
abstract class BookingApiService {
  factory BookingApiService(Dio dio, {String baseUrl}) = _BookingApiService;

  @GET('bookingJson')
  Future<BookingList> getAll(@Query('userId') int userId);

  @POST("bookingJson")
  Future<BookingList> bookClass(@Body() String body);

  @PUT("bookingJson")
  Future<BookingList> update(@Query("id") int bookingId, @Query('status') String status);
}