import 'package:flutter/material.dart';
import 'package:learningapplanguage/models/numbersmodel.dart';

class Prashesmodel extends StatelessWidget {
  const Prashesmodel({super.key, required this.model});
  final Item model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 10,
            ),
            child: Column(
              children: [
                Text(
                  model.english_number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                Text(
                  model.japanse_number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: model.onpressed,
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
