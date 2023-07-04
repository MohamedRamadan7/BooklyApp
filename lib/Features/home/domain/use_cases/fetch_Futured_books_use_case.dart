import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/book_entity.dart';
import '../repository/home_repo.dart';

class FetchFuturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFuturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchFuturedBooks() {
    //check permission
    return homeRepo.fetchFuturedBooks();
  }
}
