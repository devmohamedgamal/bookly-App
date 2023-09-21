import 'package:bookly_app/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.height = 200, this.width = 135,this.imageUrl});
  final double height, width;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(
          image: NetworkImage(
            imageUrl ?? "https://www.shoroukbookstores.com/images/Books/original/9781847941831.jpg",
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
