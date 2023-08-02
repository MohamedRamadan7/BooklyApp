import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/featured_books_cubit/featured_books_cubit.dart';
import '../../manger/featured_books_cubit/featured_books_states.dart';
import 'list_view_books.dart';

class FeaturedBooksListViewVBlocBilder extends StatelessWidget {
  const FeaturedBooksListViewVBlocBilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return FeaturedBooksListView(
            books: state.books,
          );
        } else if (state is FeaturedBooksFailuer) {
          return Text(state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
