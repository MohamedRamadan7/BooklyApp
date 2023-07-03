import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SemilarBiiksListView extends StatelessWidget {
  const SemilarBiiksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: CustomBookItem(),
        ),
      ),
    );
  }
}
