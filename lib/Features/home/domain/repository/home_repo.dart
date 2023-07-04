import 'package:booklyapp/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> frtchFuturedBooks();
  Future<List<BookEntity>> frtchNewsdBooks();
}
