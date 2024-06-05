// features/delete/data/repositories/delete_repository_impl.dart
import 'package:admain/core/errors/exception.dart';import 'package:admain/core/errors/exception.dart';
import 'package:admain/core/errors/failurs.dart';
import 'package:admain/core/network/network_info.dart';
import 'package:admain/features/delete/data/datasources/delete_remote_data_sourse_impl.dart';
import 'package:admain/features/delete/data/models/delete_model.dart';
import 'package:admain/features/delete/domain/entities/delete_params.dart';
import 'package:admain/features/delete/domain/repositories/delete_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteRepositoryImple implements DeleteRepository {
  final DeleteRemoteDataSource deleteRemoteDataSource;
  final NetworkInfo networkInfo;

  DeleteRepositoryImple({
    required this.deleteRemoteDataSource,
    required this.networkInfo,
  });


  @override
  Future<Either<Failure, Unit>> delet(DeleteParams deleteParams) async {
   DeleteModel deleteModel = DeleteModel(
      id: deleteParams.id,
      token: deleteParams.token,
      deletedElement: deleteParams.deletedElement,
    );
   if (await networkInfo.isConnected) {
      try {
        deleteRemoteDataSource.delete(deleteModel);
        return Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(UnAuthorizedFailure());
    }
  }
}