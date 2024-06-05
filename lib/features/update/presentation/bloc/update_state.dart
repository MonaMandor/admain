part of 'update_bloc.dart';

abstract class UpdateState extends Equatable {
  const UpdateState();  

  @override
  List<Object> get props => [];
}
class UpdateInitial extends UpdateState {}
