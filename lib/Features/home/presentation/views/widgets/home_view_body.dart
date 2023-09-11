import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
