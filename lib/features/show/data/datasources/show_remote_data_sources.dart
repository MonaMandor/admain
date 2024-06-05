// features/show/data/datasources/show_remote_data_sources.dart
import 'dart:convert';import 'dart:convert';

import 'package:admain/core/apis/apis_url.dart';
import 'package:admain/core/errors/exception.dart';
import 'package:admain/features/show/data/models/category_model.dart';
import 'package:admain/features/show/data/models/product_model.dart';
import 'package:admain/features/show/data/models/sub_category_model.dart';
import 'package:admain/features/show/data/models/user_mosel.dart';
import 'package:http/http.dart' as http;
abstract class ShowRemoteDataSource {
  Future<List<CategoryModel>> showCategory();
  Future<List<SubCategoryModel>> showSubCategory();
  Future<List<UserModel>> showSubAllUsers();
  Future<List<ProductModel>> showProduct();

}

class ShowRemoteDataSourceImpl implements ShowRemoteDataSource {
   final http.Client client;

  ShowRemoteDataSourceImpl({required this.client});
  @override
  Future<List<CategoryModel>> showCategory(
      ) async {
        final String url = ApiUrl.getCategory;
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type':   'application / json',
        }
    );
    final  responseString = json.decode(response.body);

    if (response.statusCode == 200) {
      final List<CategoryModel> category = responseString
          .map<CategoryModel>((json) => CategoryModel.fromJson(json))
          .toList();
      return category;
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<List<SubCategoryModel>> showSubCategory() async {
     final String url = ApiUrl.getSubCategory;
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type':   'application / json',
        }
    );
    final  responseString = json.decode(response.body);

    if (response.statusCode == 200) {
      final List<SubCategoryModel> subcategory = responseString
          .map<ProductModel>((json) => SubCategoryModel.fromJson(json))
          .toList();
      return subcategory;
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<List<ProductModel>> showProduct() async {
   const String url = ApiUrl.getProduct;
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type':   'application / json',
        }
    );
    final  responseString = json.decode(response.body);

    if (response.statusCode == 200) {
      final List<ProductModel> products = responseString
          .map<ProductModel>((json) => ProductModel.fromJson(json))
          .toList();
      return products;
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<List<UserModel>> showSubAllUsers() async {
   
    const String url = ApiUrl.getUser;
    final response =  await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type':   'application / json',
        }
    );
    final  responseString = json.decode(response.body);

    if (response.statusCode == 200) {
      final List<UserModel> users = responseString
          .map<UserModel>((json) => UserModel.fromJson(json))
          .toList();
      return users;
    } else {
      throw ServerException();
    }
  }
}
  