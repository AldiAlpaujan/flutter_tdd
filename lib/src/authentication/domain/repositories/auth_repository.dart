import 'package:flutter_tdd/core/utlis/typedef.dart';
import 'package:flutter_tdd/src/authentication/domain/entities/user.dart';

abstract class AuthRepository {
  const AuthRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  ResultFuture<List<User>> getUsers();
}
