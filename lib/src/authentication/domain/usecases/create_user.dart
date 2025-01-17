import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/core/usecase/uscase.dart';
import 'package:flutter_tdd/core/utlis/typedef.dart';
import 'package:flutter_tdd/src/authentication/domain/repositories/auth_repository.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthRepository _repository;

  @override
  ResultFuture call(CreateUserParams params) async => _repository.createUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  final String createdAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
