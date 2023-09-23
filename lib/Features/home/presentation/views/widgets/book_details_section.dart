import 'package:bookly_app/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(
          height: 225,
          width: 150,
          imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ??
              AssetsManger.errNetworkImage,
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo!.authors?.first ?? "unKnown",
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          ratingCount: bookModel.volumeInfo?.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 30,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
