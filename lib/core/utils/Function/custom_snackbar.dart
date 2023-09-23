import 'package:flutter/material.dart';

void customSnackBar(context, String txt) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(txt),
    ),
  );
}
