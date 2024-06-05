// features/show/domain/usecases/show_sub_category_use_case.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/features/show/domain/entities/sub_category_params.dart';
import 'package:admain/features/show/domain/repositories/show_repository.dart';
import 'package:dartz/dartz.dart';

class ShowSubCategoryUseCase {
  final ShowRepository repository;

  ShowSubCategoryUseCase({required this.repository});

  Future<Either<Failure,List <SubCategoryParams> >> call() async {
    return await repository.ShowSubCategory();
  }
}