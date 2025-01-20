import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/src/authentication/domain/entities/user.dart';
import 'package:flutter_tdd/src/authentication/domain/usecases/get_users.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'auth_repository.mock.dart';

void main() {
  late MockAuthRepo repository;
  late GetUsers usecase;

  setUp(
    () => {
      repository = MockAuthRepo(),
      usecase = GetUsers(repository),
    },
  );

  final tResponse = [User.empty()];

  test(
    'should call the [AuthRepo.getUsers] & return a [List<User>]',
    () async {
      // Arrange
      // STUB
      when(() => repository.getUsers()).thenAnswer(
        (_) async => Right(tResponse),
      );

      // Act
      final result = await usecase();

      // Assert
      expect(result, Right<dynamic, List<User>>(tResponse));

      verify(() => repository.getUsers()).called(1);
      verifyNoMoreInteractions(repository);
    },
  );
}
