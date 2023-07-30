import 'package:booklyapp/Features/home/domain/entities/book_entity.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitial extends FeaturedBooksStates {}

class FeaturedBooksLodaing extends FeaturedBooksStates {}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookEntity> books;
  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailuer extends FeaturedBooksStates {
  final String errorMessage;
  FeaturedBooksFailuer(this.errorMessage);
}
