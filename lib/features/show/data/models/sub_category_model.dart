// features/show/data/models/sub_category_model.dart
import 'package:admain/features/show/domain/entities/sub_category_params.dart';import 'package:admain/features/show/domain/entities/sub_category_params.dart';

class SubCategoryModel extends SubCategoryParams {
  const SubCategoryModel({
    required super.slug,
    required super.name,
    required super.id,
  }) ;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) {
    return SubCategoryModel(
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