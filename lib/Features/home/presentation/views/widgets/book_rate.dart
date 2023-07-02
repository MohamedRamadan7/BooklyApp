import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BookRated extends StatelessWidget {
  const BookRated(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(Icons.star, color: Colors.amber, size: 18),
        SizedBox(width: 4),
        Text('4.8', style: Style.textStyle16),
        SizedBox(width: 5),
        Opacity(opacity: .5, child: Text('(2390)', style: Style.textStyle14)),
      ],
    );
  }
}
