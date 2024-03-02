import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => AppBar().preferredSize;

  @override
  const CustomAppbar({
    super.key,
    required this.title,
    this.iconbutton,
  });
  final String title;
  final IconButton? iconbutton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 91, 64, 54),
      leading: iconbutton,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
