class HttpResult {
  bool isSuccess;
  int statusCode;
  dynamic result;

  HttpResult({
    required this.isSuccess,
    required this.statusCode,
    required this.result,
  });
}
