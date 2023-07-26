import 'package:booklyapp/Features/home/data/data_sourse/home_local_data_source.dart';
import 'package:booklyapp/Features/home/data/data_sourse/home_remote_data_sourse.dart';
import 'package:booklyapp/Features/home/domain/entities/book_entity.dart';
import 'package:booklyapp/Features/home/domain/repository/home_repo.dart';
import 'package:booklyapp/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSourcel;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSourcel});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFuturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSourcel.fetchFuturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFuturedBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSourcel.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }
}
