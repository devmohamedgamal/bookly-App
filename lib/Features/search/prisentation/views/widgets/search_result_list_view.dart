import 'package:bookly_app/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 15,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:Container() ,
          //  BookListViewItem(
          //   imageUrl: AssetsManger.errNetworkImage,
          // ),
        );
      },
    );
  }
}
