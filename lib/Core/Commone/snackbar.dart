import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showSnackBar({required BuildContext context, required String content}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        content,
        style: TextStyle(
            fontWeight: FontWeight.w500, color: Colors.white),
      ),
    ));
}