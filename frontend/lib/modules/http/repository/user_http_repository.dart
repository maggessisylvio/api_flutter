import 'dart:convert';

import 'package:api_flutter/model/user_model.dart';
import 'package:api_flutter/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await http
          .get(Uri.parse('https://613024415fc50700175f17ef.mockapi.io/user'));
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap.map<UserModel>((e) => UserModel.fromMap(e)).toList();
    } catch (e) {
      // ignore: avoid_print
      print(e);
      rethrow;
    }
  }
}
