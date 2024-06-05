// features/delete/domain/repositories/delete_repository.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/features/delete/domain/entities/delete_params.dart';
import 'package:dartz/dartz.dart';
abstract class DeleteRepository {
  Future<Either<Failure, Unit>> delet(DeleteParams deleteParams);
}