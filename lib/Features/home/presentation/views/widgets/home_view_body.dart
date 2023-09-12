import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(height: 30.h),
          const FeaturedBooksListView(),
          SizedBox(height: 40.h),
          const Text("Best Seller", style: Styles.textStyle18),
          SizedBox(height: 20.h),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}
