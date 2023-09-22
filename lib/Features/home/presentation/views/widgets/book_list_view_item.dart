import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_manger.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetialsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomBookImage(
              height: 80,
              width: 60,
              imageUrl: bookModel.volumeInfo!.imageLinks == null
                  ? AssetsManger.errNetworkImage
                  : bookModel.volumeInfo!.imageLinks!.thumbnail,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      style: Styles.textStyle22.copyWith(
                        fontFamily: kGtSecteraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo!.authors!.first,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        bookModel.saleInfo!.listPrice == null
                            ? "Free"
                            : "${bookModel.saleInfo!.listPrice!.amount} EGP",
                        style: Styles.textStyle22
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      BookRating(
                        rating: bookModel.volumeInfo!.averageRating ?? 0,
                        ratingCount: bookModel.volumeInfo!.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
