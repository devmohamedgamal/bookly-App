import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'similar_book_list_view.dart';

class SimilarBookListViewSection extends StatelessWidget {
  const SimilarBookListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
