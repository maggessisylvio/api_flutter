import 'dart:convert';

class UserModel {
  String id;
  String name;
  String createdAt;
  String avatar;

  UserModel({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.avatar,
  });

  /* Factory: constructor do tipo factory recebe valores e retorna uma instância
              do que ele precisa, diferente dos nomeados "normais" que somente popula
              os dados e não retorna valor! */

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt,
      'avatar': avatar,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      createdAt: map['createdAt'],
      avatar: map['avatar'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
