import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../entities/book_entity.dart';
import '../repository/home_repo.dart';

class FetchFuturedBooksUseCase extends UserCase<List<BookEntity>, NoParm> {
  final HomeRepo homeRepo;

  FetchFuturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParm? param]) async {
    return await homeRepo.fetchFuturedBooks();
  }
}
