import 'package:dartz/dartz.dart';

typedef ResultFuture<T> = Future<Either<Exception, T>>;

typedef ResultVoid = ResultFuture<void>;

typedef DataMap = Map<String, dynamic>;
