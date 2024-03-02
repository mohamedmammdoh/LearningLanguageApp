import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learningapplanguage/Views/widgets/NumberModel.dart';
import 'package:learningapplanguage/Views/widgets/customAppbar.dart';
import 'package:learningapplanguage/constants.dart';
import 'package:learningapplanguage/models/numbersmodel.dart';

class ColorsView extends StatelessWidget {
  ColorsView({super.key});
  List<Item> colorsmodels = [
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Black',
      japanse_number: 'e z',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/black.wav'));
      },
      img: 'assets/images/colors/color_black.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Brown',
      japanse_number: 'kahqi',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/brown.wav'));
      },
      img: 'assets/images/colors/color_brown.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Dusty yellow',
      japanse_number: 'e verdhë',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/dusty yellow.wav'));
      },
      img: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Gray',
      japanse_number: 'gri',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/gray.wav'));
      },
      img: 'assets/images/colors/color_gray.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Green',
      japanse_number: 'jeshil',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/green.wav'));
      },
      img: 'assets/images/colors/color_green.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Red',
      japanse_number: 'kuq',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/red.wav'));
      },
      img: 'assets/images/colors/color_red.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'White',
      japanse_number: 'bardhë',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/white.wav'));
      },
      img: 'assets/images/colors/color_white.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Yellow',
      japanse_number: 'verdhë',
      onpressed: () async {
        player.play(AssetSource('sounds/colors/yellow.wav'));
      },
      img: 'assets/images/colors/yellow.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Colors',
        iconbutton: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colorsmodels.length,
        itemBuilder: (context, index) {
          return NumberModel(model: colorsmodels[index]);
        },
      ),
    );
  }
}
