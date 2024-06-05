// features/delete/data/datasources/delete_remote_data_sourse_impl.dart
import 'package:admain/core/apis/apis_url.dart';import 'package:admain/core/apis/apis_url.dart';
import 'package:admain/core/errors/exception.dart';
import 'package:admain/features/delete/data/models/delete_model.dart';
import 'package:http/http.dart' as http;

abstract class DeleteRemoteDataSource {
  Future<void> delete(DeleteModel deleteModel);
}

class DeleteRemoteDataSourceImpl implements DeleteRemoteDataSource {
  final http.Client client;

  DeleteRemoteDataSourceImpl({required this.client});
  @override
  Future<void> delete(DeleteModel deleteModel) async {
    final String url =
        '${ApiUrl.BASE_URL}${deleteModel.deletedElement}${deleteModel.id}';
    final response = await client.delete(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Authorization ': 'Bearer ${deleteModel.token}',},
    );
    if (response.statusCode != 200) {
      throw ServerException();
    }
  }
}
