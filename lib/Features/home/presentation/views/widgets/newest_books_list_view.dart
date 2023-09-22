import 'package:bookly_app/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indecator.dart';
import 'book_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: BookListViewItem(
                  bookModel: state.books[index],
                  // imageUrl:
                  // state.books[index].volumeInfo!.imageLinks == null ? AssetsManger.errNetworkImage :
                  //  state.books[index].volumeInfo!.imageLinks!.thumbnail,
                ),);
          },
        );
      }else if(state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errorMessage);
      }else{
          return const CustomLoadingIndecator();
      }
    });
  }
}
