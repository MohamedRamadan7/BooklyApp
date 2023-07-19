class BookEntity {
  final String bookId;
  final String title;
  final String image;
  final String? authername;
  final num? price;
  final num? rate;

  BookEntity({
    required this.bookId,
    required this.title,
    required this.image,
    required this.authername,
    required this.price,
    required this.rate,
  });
}
