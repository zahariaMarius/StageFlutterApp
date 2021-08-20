class SessionException implements Exception {
  String? _message;
  SessionException(this._message);

  @override
  String toString() {
    return _message!;
  }
}