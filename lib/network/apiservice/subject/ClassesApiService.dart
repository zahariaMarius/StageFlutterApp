import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ripetizioni/data/model/classeslist/ClassesList.dart';
import 'package:ripetizioni/data/model/subjectlist/SubjectList.dart';

part 'ClassesApiService.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:8080/ripetizioniApi_war_exploded/')
abstract class ClassesApiService {
  factory ClassesApiService(Dio dio, {String baseUrl}) = _ClassesApiService;

  @GET("classJson")
  Future<ClassesList> getAllClassesBySubject(@Query("status") bool booked, @Query('subjectId') int id);

  @GET("classJson")
  Future<SubjectList> getGroupedClassesBySubject(@Query("grouped") bool grouped);



}