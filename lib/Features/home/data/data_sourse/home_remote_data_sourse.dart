import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSourse {
  Future<List<BookEntity>> fetchFuturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSourse {
  @override
  Future<List<BookEntity>> fetchFuturedBooks() {
    // TODO: implement fetchFuturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
