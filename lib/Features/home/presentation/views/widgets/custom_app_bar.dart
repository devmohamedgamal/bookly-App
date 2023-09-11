
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets_manger.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsManger.logo,
          height: 24,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,   
          ),
        ),
      ],
    );
  }
}
