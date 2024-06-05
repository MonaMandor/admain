// features/show/domain/entities/user_params.dart
import 'package:equatable/equatable.dart';import 'package:equatable/equatable.dart';

class UserParams extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String userName;
  final String email;
  final String password;
  final String address;
  final int phone;
  final String gender;
  final DateTime dob;
  final int age;

  const UserParams(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.userName,
      required this.email,
      required this.password,
      required this.address,
      required this.phone,
      required this.age,
      required this.dob,
      required this.gender});

  @override
  List<Object> get props => [
        id,
        firstName,
        lastName,
        userName,
        email,
        password,
        address,
      ];
}
