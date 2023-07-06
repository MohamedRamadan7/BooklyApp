import 'package:booklyapp/Features/home/domain/repository/home_repo.dart';
import 'package:booklyapp/core/error/failure.dart';
import 'package:booklyapp/core/use_case/base_use_case.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';

class FetchNewestBooksUseCase extends UserCase<List<BookEntity>, NoParm> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParm? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
