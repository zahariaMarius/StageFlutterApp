class Resource<T> {
  final Status status;
  final T? data;
  final String? message;

  const Resource({this.data, required this.status, this.message});

  static Resource<T> loading<T>(T? data) =>
      Resource<T>(data: data, status: Status.LOADING);

  static Resource<T> success<T>({required T data}) =>
      Resource<T>(data: data, status: Status.SUCCESS);

  static Resource<T> error<T>({T? data, required String message}) =>
      Resource<T>(message: message, status: Status.ERROR);
}

enum Status { LOADING, SUCCESS, ERROR }
