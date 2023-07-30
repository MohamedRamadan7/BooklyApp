import 'package:booklyapp/Features/home/domain/entities/book_entity.dart';

abstract class NewestBooksStates {}

class NewestBooksInitial extends NewestBooksStates {}

class NewestBooksLodaing extends NewestBooksStates {}

class NewestBooksSuccess extends NewestBooksStates {
  final List<BookEntity> books;
  NewestBooksSuccess(this.books);
}

class NewestBooksFailuer extends NewestBooksStates {
  final String errorMessage;
  NewestBooksFailuer(this.errorMessage);
}
