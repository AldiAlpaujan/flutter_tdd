import 'package:flutter_tdd/src/authentication/data/datasource/auth_remote_data_source.dart';
import 'package:flutter_tdd/src/authentication/data/repositories_impl/auth_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

void main() {
  late AuthRemoteDataSource remoteDataSource;
  late AuthRepositoryImpl repoImpl;

  setUp(() {
    remoteDataSource = MockAuthRemoteDataSource();
    repoImpl = AuthRepositoryImpl(remoteDataSource);
  });

  group('createUser', () {
    test(
      'should call the [RemoteDataSource.createUser] and complete'
      'successfully when the call to the remote source is successful',
      () async {
        // arrange

        // act

        // assert

        // verify(() => remoteDataSource.createUser(createdAt: createdAt, name: name, avatar: avatar))
      },
    );
  });
}
