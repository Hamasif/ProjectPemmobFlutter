import 'package:projectpemmob/models/category_model.dart';
import 'package:projectpemmob/models/gallery_model.dart';

class ProductModel {
  int id;
  String name;
  double price;
  String description;
  String tags;
  CategoryModel category;
  DateTime createdAt;
  DateTime updatedAt;
  List<GalleryModel> galleries;

  ProductModel({
<<<<<<< HEAD
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
    required this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        price = double.parse(json['price'].toString()),
        description = json['description'],
        tags = json['tags'],
        category = CategoryModel.fromJson(json['category']),
        galleries = (json['galleries'] as List)
            .map((gallery) => GalleryModel.fromJson(gallery))
            .toList(),
        createdAt = DateTime.parse(json['created_at']),
        updatedAt = DateTime.parse(json['updated_at']);
=======
    this.id,
    this.name,
    this.price,
    this.description,
    this.tags,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = CategoryModel.fromJson(json['category']);
    galleries = json['galleries']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList();
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
<<<<<<< HEAD
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
=======
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6
    };
  }
}

<<<<<<< HEAD
class UninitializedProductModel extends ProductModel {
  UninitializedProductModel()
      : super(
          id: 0,
          name: '',
          price: 0.0,
          description: '',
          tags: '',
          category: CategoryModel(id: 0, name: ''), // Isi nilai default di sini
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          galleries: [],
        );
}

=======
class UninitializedProductModel extends ProductModel {}
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6
