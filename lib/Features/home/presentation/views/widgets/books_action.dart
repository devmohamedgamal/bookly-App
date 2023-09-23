import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/Function/launch_url.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../data/models/book_model/book_model.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
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
              text: getText(bookModel),
              backroundColor: const Color(0xFFEF8262),
              onPressed: () async {
                customLaunchUrl(context,bookModel.volumeInfo!.previewLink!);
              },
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

  getText(BookModel bookMedl) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return "Not Avalibal";
    } else {
      return "Free Preview";
    }
  }
}
