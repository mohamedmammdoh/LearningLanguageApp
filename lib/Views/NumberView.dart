import 'package:flutter/material.dart';
import 'package:learningapplanguage/Views/widgets/NumberModel.dart';
import 'package:learningapplanguage/Views/widgets/customAppbar.dart';
import 'package:learningapplanguage/constants.dart';
import 'package:learningapplanguage/models/numbersmodel.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersView extends StatelessWidget {
  NumbersView({super.key});

  final List<Item> NumberModels = [
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'one',
      japanse_number: 'ichi',
      onpressed: () async {
        player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
      },
      img: 'assets/images/numbers/number_one.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'two',
      japanse_number: 'ni',
      onpressed: () {
        player.play(AssetSource('sounds/numbers/number_two_sound.mp3'));
      },
      img: 'assets/images/numbers/number_two.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'three',
      japanse_number: 'san',
      onpressed: () {
        player.play(AssetSource('sounds/numbers/number_three_sound.mp3'));
      },
      img: 'assets/images/numbers/number_three.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'four',
      japanse_number: 'yon',
      onpressed: () {
        player.play(AssetSource('sounds/numbers/number_four_sound.mp3'));
      },
      img: 'assets/images/numbers/number_four.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'five',
      japanse_number: 'go',
      onpressed: () {
        player.play(
          AssetSource('sounds/numbers/number_five_sound.mp3'),
        );
      },
      img: 'assets/images/numbers/number_five.png',
    ),
    Item(
      english_number: 'six',
      japanse_number: 'roku',
      color: const Color(0xFFEF9235),
      onpressed: () {
        player.play(
          AssetSource('sounds/numbers/number_six_sound.mp3'),
        );
      },
      img: 'assets/images/numbers/number_six.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'seven',
      japanse_number: 'nana',
      onpressed: () {
        player.play(
          AssetSource('sounds/numbers/number_seven_sound.mp3'),
        );
      },
      img: 'assets/images/numbers/number_seven.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'eight',
      japanse_number: 'hachi',
      onpressed: () {
        player.play(
          AssetSource('sounds/numbers/number_eight_sound.mp3'),
        );
      },
      img: 'assets/images/numbers/number_eight.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'nine',
      japanse_number: 'kyuu',
      onpressed: () {
        player.play(
          AssetSource('sounds/numbers/number_nine_sound.mp3'),
        );
      },
      img: 'assets/images/numbers/number_nine.png',
    ),
    Item(
      color: const Color(0xFFEF9235),
      english_number: 'Ten',
      japanse_number: 'juu',
      onpressed: () {
        player.play(
          AssetSource('sounds/numbers/number_ten_sound.mp3'),
        );
      },
      img: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Numbers',
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
        itemCount: NumberModels.length,
        itemBuilder: (context, index) {
          return NumberModel(
            model: NumberModels[index],
          );
        },
      ),
    );
  }
}
