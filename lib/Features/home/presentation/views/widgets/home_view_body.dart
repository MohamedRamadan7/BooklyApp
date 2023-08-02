import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'custom_appbar.dart';
import 'featured_booksList_view_bloc_bilder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListViewVBlocBilder(),
              SizedBox(height: 25),
              Text('Best Seller', style: Style.textStyle18),
              SizedBox(height: 10),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: BestSelerListView(),
          ),
        )
      ],
    );
  }
}
