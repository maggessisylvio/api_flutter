import 'package:api_flutter/model/user_model.dart';
import 'package:api_flutter/repository/i_user_repository.dart';
import 'package:api_flutter/shared/rest_client.dart';

class UserRepositoryGetConnect implements IUserRepository {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);

  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await restClient.get(
        'https://613024415fc50700175f17ef.mockapi.io/user', decoder: (body) {
      if (body is List) {
        return body.map<UserModel>((e) => UserModel.fromMap(e)).toList();
      }
      return null;
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }

    return response.body!;
  }
}
