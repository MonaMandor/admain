// features/show/domain/repositories/show_repository.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/features/show/domain/entities/category_params.dart';
import 'package:admain/features/show/domain/entities/product_params.dart';
import 'package:admain/features/show/domain/entities/sub_category_params.dart';
import 'package:admain/features/show/domain/entities/user_params.dart';
import 'package:dartz/dartz.dart';

abstract class ShowRepository {
  Future<Either<Failure,List <CategooryParams> >> ShowCategory();
  Future<Either<Failure,List <SubCategoryParams> >> ShowSubCategory();
   Future<Either<Failure,List <ProductParams> >> ShowProduct();
    Future<Either<Failure,List <UserParams> >> ShowUser();
}