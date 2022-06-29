class ProductsModel {
  ProductsModel({
    required this.response,
  });

  List<Response> response;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    response: List<Response>.from(json["response"].map((x) => Response.fromJson(x))),
  );

}

class Response {
  Response({
    required this.id,
    required this.category,
    required this.name,
    required this.image,
    required this.saleType,
    required this.price,
    required this.priceDiscounted,
    required this.info,
  });

  int id;
  Category category;
  String name;
  String image;
  String saleType;
  int price;
  int priceDiscounted;
  String info;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
    id: json["id"],
    category: Category.fromJson(json["category"]),
    name: json["name"],
    image: json["image"],
    saleType: json["sale_type"],
    price: json["price"],
    priceDiscounted: json["price_discounted"] == null ? null : json["price_discounted"],
    info: json["info"],
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
    id: json["id"],
    name: json["name"],
  );

}
