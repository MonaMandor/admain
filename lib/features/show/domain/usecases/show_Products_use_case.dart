// features/show/domain/usecases/show_Products_use_case.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/features/show/domain/entities/category_params.dart';
import 'package:admain/features/show/domain/entities/product_params.dart';
import 'package:admain/features/show/domain/repositories/show_repository.dart';
import 'package:dartz/dartz.dart';

class ShowProductsUseCase {
  final ShowRepository repository;

  ShowProductsUseCase({required this.repository});

  Future<Either<Failure,List <ProductParams> >> call() async {
    return await repository.ShowProduct();
  }
}