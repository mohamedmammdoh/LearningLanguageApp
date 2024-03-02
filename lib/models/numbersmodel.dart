import 'package:flutter/material.dart';

class Item {
  final String english_number;
  final String japanse_number;
  final Function()? onpressed;
  final String? img;
  final Color color;

  Item({
    required this.english_number,
    required this.japanse_number,
    required this.onpressed,
    this.img,
    required this.color,
  });
}
