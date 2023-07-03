import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_rate.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var siz = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: siz.width * .20),
          child: const CustomBookItem(),
        ),
        const SizedBox(height: 30),
        const Text(
          'The Jungle Book',
          style: Style.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        const BookRated(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 40),
        const BooksAction(),
      ],
    );
  }
}
