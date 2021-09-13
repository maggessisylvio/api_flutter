import 'package:api_flutter/model/user_model.dart';

abstract class IUserRepository {
  Future<List<UserModel>> findAllUsers();
}
