import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookImage(
          height: 225,
          width: 150,
          imageUrl: "https://www.shoroukbookstores.com/images/Books/original/9781847941831.jpg",
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Make Time',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Mohamed Gamal',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
