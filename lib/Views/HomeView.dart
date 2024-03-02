import 'package:flutter/material.dart';
import 'package:learningapplanguage/Views/ColorsView.dart';
import 'package:learningapplanguage/Views/FamilyMemberView.dart';
import 'package:learningapplanguage/Views/NumberView.dart';
import 'package:learningapplanguage/Views/widgets/PrashesView.dart';
import 'package:learningapplanguage/Views/widgets/categorymodel.dart';
import 'package:learningapplanguage/Views/widgets/customAppbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'TokuApp',
      ),
      body: Column(
        children: [
          CategoryModel(
            categoryname: 'Numbers',
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NumbersView(),
                ),
              );
            },
            color: Colors.amber,
          ),
          CategoryModel(
            categoryname: 'Family Members',
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FamilyMemberView(),
                ),
              );
            },
            color: Colors.green,
          ),
          CategoryModel(
            categoryname: 'Colors',
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColorsView(),
                ),
              );
            },
            color: Colors.purpleAccent,
          ),
          CategoryModel(
            categoryname: 'Prashes',
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrashesView(),
                ),
              );
            },
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
