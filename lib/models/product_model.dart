import 'package:shamo/models/category_model.dart';
import 'package:shamo/models/gallery_model.dart';

class ProductModel{
  int id;
  String name;
  double price;
  String description;
  String tags;
  CategoryModel category;
  DateTime created_at;
  DateTime updated_at;
  List<GalleryModel> galleries;

  ProductModel({
    required this.id, 
    required this.name,
    required this.price,
    required this.description,
    this.tags = '',
    required this.category,
    required this.created_at,
    required this.updated_at,
    required this.galleries,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json)
  => ProductModel(
      id: json['id'],
      name: json['name'],
      price: double.parse(json['price'].toString()),
      description: json['description'], 
      tags: json['tags'] ?? '',
      category: CategoryModel.fromJson(json['category']), 
      created_at: DateTime.parse(json['created_at']), 
      updated_at: DateTime.parse(json['updated_at']), 
      galleries: json['galleries']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList() ?? [],
    );

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'created_at': created_at.toString(),
      'updated_at': updated_at.toString(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList()
    };
  }

}


// class UninitializedProductModel extends ProductModel {
//   UninitializedProductModel({
//     int? id, String? name, double? price, String? description, CategoryModel? category, DateTime? created_at, DateTime? updated_at, List<GalleryModel>? galleries
//     }) : super(id: 0, name: '', price: 0, description: '', category: , created_at: created_at, updated_at: updated_at, galleries: galleries);
  
//   // UninitializedProductModel({id, name, price, description, tags, category, created_at, updated_at, galleries}) : super(id: id, name: name, price: price, description: description, category: category, created_at: created_at, updated_at: updated_at, galleries: galleries);
//   // const UninitializedProductModel({Key? key}): super(key: key);
// }
