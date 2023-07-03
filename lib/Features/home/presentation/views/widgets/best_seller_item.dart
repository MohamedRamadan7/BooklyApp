import 'package:booklyapp/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/const.dart';
import '../../../../../core/utils/style.dart';
import 'book_rate.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          'https://www.dramaticpublishing.com/media/catalog/product/cache/1/image/300x436/9df78eab33525d08d6e5fb8d27136e95/j/u/jungle_book_cover_j24000.jpg',
                        ))),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Style.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'J.K. Rowling',
                      style: Style.textStyle14.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Style.textStyle20
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        const BookRated()
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
