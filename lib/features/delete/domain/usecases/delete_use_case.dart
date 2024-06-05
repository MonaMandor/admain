// features/delete/domain/usecases/delete_use_case.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/features/delete/domain/entities/delete_params.dart';
import 'package:admain/features/delete/domain/repositories/delete_repository.dart';
import 'package:dartz/dartz.dart';
class DeleteUseCase {
  final DeleteRepository deleteRepository;
  DeleteUseCase(this.deleteRepository);
  Future<Either<Failure, Unit>> delet(DeleteParams deleteParams) async {
    return await deleteRepository.delet(deleteParams);
  }
}