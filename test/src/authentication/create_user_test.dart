// before write the test, we need to ask three questions

// 1. what does the class depend on?
// this mean what does the class take on its constructor

// answer -- AuthRepository

// 2. how can we create a fake version of the dependency

// answer -- Use Mocktail

// 3. how do we control what our dependencies do

// answer -- Use Mocktails API

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/src/authentication/domain/usecases/create_user.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import 'auth_repository.mock.dart';

void main() {
  late MockAuthRepo repository;
  late CreateUser usecase;

  setUp(() {
    repository = MockAuthRepo();
    usecase = CreateUser(repository);
  });

  test(
    'should call the [AuthRepo.createUser]',
    () async {
      // Arrange
      // STUB
      when(
        () => repository.createUser(
          createdAt: any(named: 'createdAt'),
          name: any(named: 'name'),
          avatar: any(named: 'avatar'),
        ),
      ).thenAnswer((_) async => const Right(null));

      final emptyParams = CreateUserParams.empty();

      // Act
      final result = await usecase(emptyParams);

      // Assert
      expect(result, equals(Right<dynamic, void>(null)));

      verify(
        () => repository.createUser(
          createdAt: emptyParams.createdAt,
          name: emptyParams.name,
          avatar: emptyParams.avatar,
        ),
      ).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
