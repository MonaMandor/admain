// features/show/domain/entities/product_params.dart
import 'package:equatable/equatable.dart';import 'package:equatable/equatable.dart';

class ProductParams extends Equatable {
  String id;
  String name;
  String slug;
  String description;
  int price;
  String quality;
  String category;
  String subcategory;

  ProductParams({
    required this.id,
    required this.name,
    required this.slug,
    required this.description,
    required this.price,
    required this.quality,
    required this.category,
    required this.subcategory,
  });
  
  @override

  List<Object?> get props => [id, name, slug, description, price, quality, category, subcategory];
  
}
