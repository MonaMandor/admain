// features/show/data/models/product_model.dart
import 'package:admain/features/show/domain/entities/product_params.dart';import 'package:admain/features/show/domain/entities/product_params.dart';

class ProductModel extends ProductParams {
  ProductModel(
      {required super.id,
      required super.name,
      required super.slug,
      required super.description,
      required super.price,
      required super.quality,
      required super.category,
      required super.subcategory});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      description: json['description'],
      price: json['price'],
      quality: json['quality'],
      category: json['category'],
      subcategory: json['subcategory'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'description': description,
      'price': price,
      'quality': quality,
      'category': category,
      'subcategory': subcategory,
    };
  }
}
