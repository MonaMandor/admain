// features/show/domain/entities/category_params.dart
import 'package:equatable/equatable.dart';import 'package:equatable/equatable.dart';

class CategooryParams extends Equatable {
   final String id;
final  String name;
 final String slug;
  const CategooryParams({
    required this.id,
    required this.name,
    required this.slug,
  });

  @override
  List<Object?> get props => [id, name, slug];
}