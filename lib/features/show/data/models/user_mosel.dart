// features/show/data/models/user_mosel.dart
import 'package:admain/features/show/domain/entities/user_params.dart';import 'package:admain/features/show/domain/entities/user_params.dart';

class UserModel extends UserParams {
  const UserModel({
    required super.id,
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.userName,
    required super.password,
    required super.address,
    required super.phone,
    required super.age,
    required super.dob,
    required super.gender,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      userName: json['user_name'],
      email: json['email'],
      password: json['password'],
      address: json['address'],
      phone: json['phone'],
      age: json['age'],
      dob: json['dob'],
       gender:  json['gender']


    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'user_name': userName,
      'email': email,
      'password': password,
      'address': address,
      'phone': phone,
      'age': age,
      'dob': dob,
      'gender':gender,
    };
  }
}
