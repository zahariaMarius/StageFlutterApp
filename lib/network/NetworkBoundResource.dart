import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ripetizioni/data/Resuorce.dart';
import 'package:rxdart/rxdart.dart';

//ResultType: type for the Resource data.
//RequestType: type for the API response.
class NetworkBoundResource<ResultType, RequestType> {
  final ReplaySubject<Resource<ResultType>> _replaySubject =
      ReplaySubject<Resource<ResultType>>();

  Stream<Resource<ResultType>> asStream({
    Future<RequestType> createCall()?,
    bool shouldFetch(ResultType data)?,
    Future<ResultType> loadFromDb()?,
    Future<void> saveCallResult(RequestType data)?,
  }) {
    _replaySubject.add(Resource.loading(null));

    loadFromDb!().then((dbData) {
      if (shouldFetch!(dbData)) {
        _replaySubject.add(Resource.loading(dbData));

        createCall!.call().then((response) {
          saveCallResult!(response).then((value) {
            loadFromDb().then((newDbData) =>
                _replaySubject.add(Resource.success(data: newDbData)));
          });
        }).catchError((err) {
          switch (err.runtimeType) {
            case DioError:
              final DioError dioError = (err as DioError);
              print(dioError);
              _replaySubject
                  .add(Resource.error(message: dioError.error));
              break;
          }
        });
      } else {
        _replaySubject.add(Resource.success(data: dbData));
      }
    });

    return _replaySubject.stream;
  }
}
