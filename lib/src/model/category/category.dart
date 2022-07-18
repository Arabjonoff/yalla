class CategoryModel {
  CategoryModel({
    required this.results,
  });

  List<CategoryResult> results;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        results: json["categories"] == null?<CategoryResult>[]: List<CategoryResult>.from(
          json["categories"].map(
            (x) => CategoryResult.fromJson(x),
          ),
        ),
      );
}

class CategoryResult {
  CategoryResult({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory CategoryResult.fromJson(Map<String, dynamic> json) => CategoryResult(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
      );
}
