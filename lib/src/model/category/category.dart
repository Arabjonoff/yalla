class CategoryModel {
  CategoryModel({
    required this.categoriesResult,
  });

  List<Category> categoriesResult;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        categoriesResult: json["categories"] == null?<Category>[]: List<Category>.from(
          json["categories"].map(
            (x) => Category.fromJson(x),
          ),
        ),
      );
}

class Category {
  Category({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
      );
}
