import 'dart:convert';

import 'package:flutter_tdd/core/utlis/typedef.dart';
import 'package:flutter_tdd/src/authentication/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.createdAt,
    required super.name,
    required super.avatar,
  });

  factory UserModel.fromJson(String json) => UserModel.fromMap(
        jsonDecode(json) as DataMap,
      );

  const UserModel.empty()
      : this(
          id: '1',
          createdAt: '_empty.createdAt',
          name: '_empty.name',
          avatar: '_empty.avatar',
        );

  UserModel.fromMap(DataMap json)
      : this(
          id: json['id'],
          createdAt: json['created_at'],
          name: json['name'],
          avatar: json['avatar'],
        );

  UserModel coptyWith({
    String? id,
    String? createdAt,
    String? name,
    String? avatar,
  }) =>
      UserModel(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
      );

  DataMap toMap() => <String, dynamic>{
        'id': id,
        'created_at': createdAt,
        'name': name,
        'avatar': avatar,
      };

  String toJson() => jsonEncode(toMap());
}
