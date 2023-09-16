import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
