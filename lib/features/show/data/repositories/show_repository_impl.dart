// features/show/data/repositories/show_repository_impl.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/core/network/network_info.dart';
import 'package:admain/features/show/data/datasources/show_remote_data_sources.dart';
import 'package:admain/features/show/domain/entities/category_params.dart';
import 'package:admain/features/show/domain/entities/product_params.dart';
import 'package:admain/features/show/domain/entities/sub_category_params.dart';
import 'package:admain/features/show/domain/entities/user_params.dart';
import 'package:admain/features/show/domain/repositories/show_repository.dart';
import 'package:dartz/dartz.dart';

class ShowRepositoryImple implements ShowRepository {
   final NetworkInfo networkInfo;
  final ShowRemoteDataSource showRemoteDataSource;

  ShowRepositoryImple({required this.showRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<CategooryParams>>> ShowCategory() async {
   if (await networkInfo.isConnected) {
      try {
        final remoteCategory = await showRemoteDataSource.showCategory();
        return Right(remoteCategory);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }  
  }

  @override
  Future<Either<Failure, List<SubCategoryParams>>> ShowSubCategory() async {
  if (await networkInfo.isConnected) {
      try {
        final remoteSubCategory = await showRemoteDataSource.showSubCategory();
        return Right(remoteSubCategory);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    } 
  }

  @override
  Future<Either<Failure, List<ProductParams>>> ShowProduct() async {
    
    if (await networkInfo.isConnected) {
      try {
        final remoteProduct = await showRemoteDataSource.showProduct();
        return Right(remoteProduct);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, List<UserParams>>> ShowUser() async {
   if (await networkInfo.isConnected) {
      try {
        final remoteUser = await showRemoteDataSource.showSubAllUsers();
        return Right(remoteUser);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }

}