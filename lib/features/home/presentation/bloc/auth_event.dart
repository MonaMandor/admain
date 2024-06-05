// features/admain/presentation/bloc/auth_event.dart
// ignore_for_file: prefer_const_constructors_in_immutables

part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}


class CategoryImageFromCamera extends AuthEvent {
  CategoryImageFromCamera();
}

class CategoryImageFromGallery extends AuthEvent {
  CategoryImageFromGallery();
}