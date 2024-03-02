import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learningapplanguage/Views/widgets/NumberModel.dart';
import 'package:learningapplanguage/Views/widgets/customAppbar.dart';
import 'package:learningapplanguage/constants.dart';
import 'package:learningapplanguage/models/numbersmodel.dart';

class FamilyMemberView extends StatelessWidget {
  FamilyMemberView({super.key});
  List<Item> fmailymodels = [
    Item(
      english_number: 'Family daughter',
      japanse_number: 'Kazoku no musume',
      onpressed: () {
        player.play(AssetSource('sounds/family_members/daughter.wav'));
      },
      img: 'assets/images/family_members/family_daughter.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family father',
      japanse_number: 'Kazoku no chichi',
      onpressed: () {
        player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
      },
      img: 'assets/images/family_members/family_father.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family grandfather',
      japanse_number: 'Kazoku no sofu',
      onpressed: () {
        player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
      },
      img: 'assets/images/family_members/family_grandfather.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family grandmother',
      japanse_number: 'Kazoku no sobo',
      onpressed: () {
        player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
      },
      img: 'assets/images/family_members/family_grandmother.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family mother',
      japanse_number: 'Kazoku no haha',
      onpressed: () {
        player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
      },
      img: 'assets/images/family_members/family_mother.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family younger sister',
      japanse_number: 'Kazoku no imōto',
      onpressed: () {
        player.play(AssetSource('sounds/family_members/younger sister.wav'));
      },
      img: 'assets/images/family_members/family_younger_sister.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family older brother',
      japanse_number: 'Kazoku no ani',
      onpressed: () {
        player.play(AssetSource('sounds/family_members/older bother.wav'));
      },
      img: 'assets/images/family_members/family_older_brother.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family Son',
      japanse_number: 'Kazoku no musuko',
      onpressed: () {
        player.play(AssetSource('sounds/family_members/son.wav'));
      },
      img: 'assets/images/family_members/family_son.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family younger sister',
      japanse_number: 'Kazoku no imouto',
      onpressed: () {
        player.play(AssetSource('sounds/family_members/younger sister.wav'));
      },
      img: 'assets/images/family_members/family_younger_sister.png',
      color: Colors.green,
    ),
    Item(
      english_number: 'Family younger brother',
      japanse_number: 'Kazoku no otōto',
      onpressed: () {
        player.play(AssetSource('sounds/family_members/younger brohter.wav'));
      },
      img: 'assets/images/family_members/family_younger_brother.png',
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Family Members',
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
        itemCount: fmailymodels.length,
        itemBuilder: (context, index) {
          return NumberModel(
            model: fmailymodels[index],
          );
        },
      ),
    );
  }
}
