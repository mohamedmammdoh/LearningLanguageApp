import 'package:flutter/material.dart';

class CategoryModel extends StatelessWidget {
  const CategoryModel({
    super.key,
    required this.categoryname,
    required this.ontap,
    required this.color,
  });
  final String categoryname;
  final Function()? ontap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 80,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            left: 22,
          ),
          child: Text(
            categoryname,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
