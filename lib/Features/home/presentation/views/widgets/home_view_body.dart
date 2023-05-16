import 'package:booklyapp/core/utils/const.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'best_seller_item.dart';
import 'best_seller_list_view.dart';
import 'custom_appbar.dart';
import 'list_view_books.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 25),
              Text('Best Seller', style: Style.textStyle18),
              SizedBox(height: 10),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: BestSelerListView(),
          ),
        )
      ],
    );

  }
}
