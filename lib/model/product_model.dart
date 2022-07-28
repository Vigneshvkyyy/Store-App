import 'package:flutter/cupertino.dart';
import 'package:store_app/model/category_model.dart';

class ProductModel with ChangeNotifier {
  int? id;
  String? title;
  int? price;
  String? description;
  CategoriesModel? category;
  List<String>? images;

  ProductModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.images});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'] != null
        ? new CategoriesModel.fromJson(json['category'])
        : null;
    images = json['images'].cast<String>();
  }

  static List<ProductModel> productsFromSnapshot(List productSnapshot) {
    return productSnapshot.map((data) {
      print("data $data");
      return ProductModel.fromJson(data);
    }).toList();
  }
}
