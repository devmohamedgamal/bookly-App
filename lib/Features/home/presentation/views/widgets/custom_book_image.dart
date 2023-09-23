import 'package:bookly_app/core/utils/assets_manger.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage(
      {super.key, this.height = 200, this.width = 135, this.imageUrl});
  final double height, width;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: height.h,
        width: width.w,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
          imageUrl: imageUrl ??
              "https://www.shoroukbookstores.com/images/Books/original/9781847941831.jpg",
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}


// decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.r),
//         image: DecorationImage(
//           image: NetworkImage(
//             imageUrl ?? "https://www.shoroukbookstores.com/images/Books/original/9781847941831.jpg",
//           ),
//           fit: BoxFit.fill,
//         ),
//       ),