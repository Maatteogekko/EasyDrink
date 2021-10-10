class ResponseException implements Exception {
  final int code;

  ResponseException(this.code);

  @override
  String toString() {
    return "Response exception with code $code";
  }
}
