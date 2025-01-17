import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.messge, required this.statusCode});

  final String messge;
  final int statusCode;

  @override
  List<Object?> get props => [messge, statusCode];
}

class ApiFailure extends Failure {
  const ApiFailure({required super.messge, required super.statusCode});
}
