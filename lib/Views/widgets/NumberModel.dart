import 'package:flutter/material.dart';
import 'package:learningapplanguage/models/numbersmodel.dart';

class NumberModel extends StatelessWidget {
  NumberModel({
    super.key,
    required this.model,
  });
  Item model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: model.color,
      child: Row(
        children: [
          Container(
            color: const Color(0XffFFF6DC),
            child: Image.asset(
              model.img!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  model.japanse_number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  model.english_number,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: model.onpressed,
            icon: const Icon(
              size: 30,
              color: Colors.white,
              Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
}
