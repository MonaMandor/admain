// features/show/domain/entities/sub_category_params.dart
import 'package:equatable/equatable.dart';import 'package:equatable/equatable.dart';

class SubCategoryParams extends Equatable {
   final String id;
final  String name;
 final String slug;
  const SubCategoryParams({
    required this.id,
    required this.name,
    required this.slug,
  });

  @override
  List<Object?> get props => [id, name, slug];
}