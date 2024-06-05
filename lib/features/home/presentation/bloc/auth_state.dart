// features/admain/presentation/bloc/auth_state.dart
// ignore_for_file: prefer_const_constructors_in_immutables

part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class CategoryImageFromCameraState extends AuthState {}

class CategoryImageFromGalleryState extends AuthState {}
