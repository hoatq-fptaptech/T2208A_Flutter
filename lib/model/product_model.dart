class ProductModel {
  late int id;
  late String title;
  late String description;
  late String category;
  late double price;
  late double discountPercentage;
  late double rating;
  late int stock;
  late List<String> tags;
  late String brand;
  late String sku;
  late int weight;
  late String thumbnail;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    title = json['title']??"";
    description = json['description']??"";
    category = json['category']??"";
    price = json['price']??0;
    discountPercentage = json['discountPercentage']??0;
    rating = json['rating']??0;
    stock = json['stock']??0;
    tags = json['tags'].cast<String>()??[];
    brand = json['brand']??"";
    sku = json['sku']??"";
    weight = json['weight']??0;
    thumbnail = json['thumbnail']??"";
  }
}