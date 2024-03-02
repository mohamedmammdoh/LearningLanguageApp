import 'package:flutter/material.dart';
import 'package:learningapplanguage/Views/widgets/Prashesmodel.dart';
import 'package:learningapplanguage/Views/widgets/customAppbar.dart';
import 'package:learningapplanguage/models/numbersmodel.dart';

class PrashesView extends StatelessWidget {
  PrashesView({super.key});
  final List<Item> PrashesModels = [
    Item(
      english_number: 'Hello, how are you?',
      japanse_number: 'Konnichiwa, genki desu ka?',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'Please',
      japanse_number: 'Onegaishimasu.',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'Thank you.',
      japanse_number: 'Arigatou',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'I\'m sorry',
      japanse_number: 'Gomen nasai',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'Good morning.',
      japanse_number: 'Ohayou gozaimasu.',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'Goodbye.',
      japanse_number: 'Sayounara',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: ' How much is it?',
      japanse_number: 'Ikura desu ka?',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'It is delicious,is not it?',
      japanse_number: 'Oishii desu ne',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'Family grandfather',
      japanse_number: 'Kazoku no sofu',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'Here you are. / Please go ahead.',
      japanse_number: 'Douzo',
      onpressed: () {},
      color: Colors.green,
    ),
    Item(
      english_number: 'What is your name?',
      japanse_number: 'Onamae wa nan desu ka?',
      onpressed: () {},
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Prashes',
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
        itemCount: PrashesModels.length,
        itemBuilder: (context, index) {
          return Prashesmodel(
            model: PrashesModels[index],
          );
        },
      ),
    );
  }
}
