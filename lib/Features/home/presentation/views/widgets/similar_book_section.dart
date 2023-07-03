import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'similar_bools_listview.dart';

class SimaiarBookSection extends StatelessWidget {
  const SimaiarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        const SemilarBiiksListView(),
      ],
    );
  }
}
