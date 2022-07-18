import 'package:rxdart/rxdart.dart';
import 'package:yalla/src/model/category/category.dart';
import 'package:yalla/src/model/httpResult/http_result.dart';
import 'package:yalla/src/provider/repositoriy.dart';

class CategoryBloc{
  final Repository _repository = Repository();
  final fetchCategory = PublishSubject<CategoryModel>();

  Stream<CategoryModel> get getCategory => fetchCategory.stream;
  getAllCategory()async{
    HttpResult result = await _repository.getCategory();
    if(result.isSuccess){
      CategoryModel data = CategoryModel.fromJson(result.result);
      fetchCategory.sink.add(data);
    }
  }
}
final categoryBloc = CategoryBloc();