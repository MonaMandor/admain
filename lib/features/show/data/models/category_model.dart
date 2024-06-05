// features/show/data/models/category_model.dart
import 'package:admain/features/show/domain/entities/category_params.dart';import 'package:admain/features/show/domain/entities/category_params.dart';


class CategoryModel extends CategooryParams {
  const CategoryModel({
    required String id,
    required String name,
    required String slug,
  }) : super(
          id: id,
          name: name,
          slug: slug,
        );

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
    };
  }
}