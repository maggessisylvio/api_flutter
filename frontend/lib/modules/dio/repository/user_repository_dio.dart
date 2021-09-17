import 'package:api_flutter/model/user_model.dart';
import 'package:api_flutter/repository/i_user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryDio implements IUserRepository {
  final Dio _dio;

  UserRepositoryDio(this._dio);

  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await _dio
          .get<List>('https://613024415fc50700175f17ef.mockapi.io/user');
      return response.data!.map((e) => UserModel.fromMap(e)).toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
