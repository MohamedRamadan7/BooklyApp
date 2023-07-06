import 'package:dartz/dartz.dart';

import '../error/failure.dart';

abstract class UserCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParm {}
