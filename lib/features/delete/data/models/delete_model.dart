// features/delete/data/models/delete_model.dart
import 'package:admain/features/delete/domain/entities/delete_params.dart';import 'package:admain/features/delete/domain/entities/delete_params.dart';

class DeleteModel extends DeleteParams {
  DeleteModel(
      {required super.id, required super.token, required super.deletedElement});

  factory DeleteModel.fromJson(Map<String, dynamic> json) {
    return DeleteModel(
      id: json['id'],
      token: json['token'],
      deletedElement: json['deletedElement'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'token': token,
      'deletedElement': deletedElement,
    };
  }
}
