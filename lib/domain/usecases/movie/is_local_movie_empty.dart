import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/failures.dart/failure.dart';
import '../../repository/repository.dart';
import '../usecase.dart';

@lazySingleton
class IsLocalMovieEmpty implements UseCase<bool, NoParams> {
  Repository repository;

  IsLocalMovieEmpty({@required this.repository});

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return await repository.isLocalMovieEmpty();
  }
}
