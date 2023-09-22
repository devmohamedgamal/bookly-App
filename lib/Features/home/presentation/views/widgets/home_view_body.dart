import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';
import 'newest_books_list_view.dart';
import 'book_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                SizedBox(height: 30.h),
                const FeaturedBooksListView(),
                SizedBox(height: 40.h),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text("Newest Books", style: Styles.textStyle18),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: NewestBooksListView(),
        ),
      ],
    );
  }
}
