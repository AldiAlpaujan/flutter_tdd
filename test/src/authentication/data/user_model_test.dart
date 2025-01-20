import 'dart:convert';

import 'package:flutter_tdd/core/utlis/typedef.dart';
import 'package:flutter_tdd/src/authentication/data/models/user_model.dart';
import 'package:flutter_tdd/src/authentication/domain/entities/user.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixtures_reader.dart';

void main() {
  final tModel = UserModel.empty();

  test('should be a subclass of [User] entity', () {
    expect(tModel, isA<User>());
  });

  final tJson = fixture('user.json');
  final tMap = jsonDecode(tJson) as DataMap;

  group('fromMap', () {
    test('should return a [UserModel] with right data', () {
      // act
      final result = UserModel.fromMap(tMap);
      // assert
      expect(result, tModel);
    });
  });

  group('fromJson', () {
    test('should return a [UserModel] with right data', () {
      // act
      final result = UserModel.fromJson(tJson);
      // assert
      expect(result, tModel);
    });
  });

  group('toMap', () {
    test('should return a [DataMap] with right data', () {
      // act
      final result = tModel.toMap();
      // assert
      expect(result, tMap);
    });
  });

  group('toJson', () {
    test('should return a [Json] with right data', () {
      // act
      final result = tModel.toJson();
      final tJson = jsonEncode({
        "id": "1",
        "createdAt": "_empty.createdAt",
        "name": "_empty.name",
        "avatar": "_empty.avatar"
      });
      // assert
      expect(result, tJson);
    });
  });

  group('copyWith', () {
    test('should return a [UserModel] with diffrent data', () {
      // arrange

      // act
      final result = tModel.coptyWith(name: 'Paul');

      // assert
      expect(result.name, equals('Paul'));
    });
  });
}
