import 'package:yalla/src/model/httpResult/http_result.dart';
import 'package:yalla/src/provider/app_provider.dart';

class Repository{
  final AppProvider _provider = AppProvider();
  Future<HttpResult> getCategory() => _provider.getCategory();
  Future<HttpResult> getCategoryId(int id) => _provider.getCategoryId(id);
}