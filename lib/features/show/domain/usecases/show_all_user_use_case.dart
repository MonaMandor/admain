// features/show/domain/usecases/show_all_user_use_case.dart
import 'package:admain/core/errors/failurs.dart';import 'package:admain/core/errors/failurs.dart';
import 'package:admain/features/show/domain/entities/category_params.dart';
import 'package:admain/features/show/domain/entities/user_params.dart';
import 'package:admain/features/show/domain/repositories/show_repository.dart';
import 'package:dartz/dartz.dart';

class ShowAllUserUseCase {
  final ShowRepository repository;

  ShowAllUserUseCase({required this.repository});

  Future<Either<Failure,List <UserParams> >> call() async {
    return await repository.ShowUser();
  }
}