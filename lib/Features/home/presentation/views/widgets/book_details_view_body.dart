import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(
                height: 40,
              ),
              const CustomBookImage(
                height: 225,
                width: 150,
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
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 30,
              ),
              const BooksAction(),
            ],
          ),
        ),
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: "19.99\$",
              backroundColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "Free Preview",
              backroundColor: const Color(0xFFEF8262),
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
