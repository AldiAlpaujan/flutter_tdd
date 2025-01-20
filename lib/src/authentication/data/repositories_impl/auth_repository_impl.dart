import 'package:flutter_tdd/core/utlis/typedef.dart';
import 'package:flutter_tdd/src/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:flutter_tdd/src/authentication/domain/entities/user.dart';
import 'package:flutter_tdd/src/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._remoteDataSource);

  final AuthRemoteDataSource _remoteDataSource;

  @override
  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  }) {
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<User>> getUsers() {
    throw UnimplementedError();
  }
}
