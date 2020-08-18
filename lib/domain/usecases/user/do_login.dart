import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/failures.dart/failure.dart';
import '../../repository/repository.dart';
import '../usecase.dart';

@lazySingleton
class DoLogin implements UseCase<String, Params> {
  Repository repository;

  DoLogin({@required this.repository});

  @override
  Future<Either<Failure, String>> call(Params params) async {
    return await repository.login(params.username, params.password);
  }
}

class Params {
  final String username;
  final String password;

  Params(this.username, this.password);
}
