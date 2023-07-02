import 'package:booklyapp/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var siz = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDedailsAppBar(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: siz.width * .20),
              child: const CustomBookItem()),
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
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 18),
          const BookRated(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 30),
          const BooksAction(),
        ],
      ),
    );
  }
}
