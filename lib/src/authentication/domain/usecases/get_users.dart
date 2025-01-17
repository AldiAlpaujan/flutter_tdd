import 'package:flutter_tdd/core/usecase/uscase.dart';
import 'package:flutter_tdd/core/utlis/typedef.dart';
import 'package:flutter_tdd/src/authentication/domain/entities/user.dart';
import 'package:flutter_tdd/src/authentication/domain/repositories/auth_repository.dart';

class GetUsers extends UsecaseWithoutParams<List<User>> {
  const GetUsers(this._repository);

  final AuthRepository _repository;

  @override
  ResultFuture<List<User>> call() async {
    return _repository.getUsers();
  }
}
