
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BookRated extends StatelessWidget {
  const BookRated({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 18),
        const SizedBox(width: 6),
        const Text('4.8', style: Style.textStyle16),
        const SizedBox(width: 5),
        Text('(2390)', style: Style.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}