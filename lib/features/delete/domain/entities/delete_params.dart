// features/delete/domain/entities/delete_params.dart
import 'package:equatable/equatable.dart';import 'package:equatable/equatable.dart';

class DeleteParams extends Equatable {
  final String id;
  final String token;
  final String deletedElement; 

  DeleteParams({required this.id, required this.token, required this.deletedElement});

  @override
  List<Object?> get props => [id, token, deletedElement];
}