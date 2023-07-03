import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import '../../../../home/presentation/views/widgets/best_seller_item.dart';
import 'custom_search_text_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFiled(),
          SizedBox(height: 16),
          Text('Search Result', style: Style.textStyle18),
          SizedBox(height: 16),
          Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookItem(),
        );
      },
    );
  }
}
