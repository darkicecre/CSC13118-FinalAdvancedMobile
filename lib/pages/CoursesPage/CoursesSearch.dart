import 'package:final_advanced_mobile/pages/ReUse/MultiSelectChip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoursesSearch extends StatefulWidget {
  const CoursesSearch({super.key});

  @override
  State<CoursesSearch> createState() => _CoursesSearchState();
}

class _CoursesSearchState extends State<CoursesSearch> {
  final List<String> levels = [
    'Any level',
    'Beginner',
    'Upper-Beginner',
    'Pre-Intermediate',
    'Intermediate',
    'Upper-Intermediate',
    'Pre-Advanced',
    'Advanced'
  ];
  final List<String> categories = [
    'For studying abroad',
    'English for Traveling',
    'Conversational English',
    'English for Beginners',
    'Business English',
    'STARTERS',
    'English for Kid',
    'PET',
    'KET',
    'MOVERS',
    'FLYERS',
    'TOEFL',
    'TOEIC',
    'IELTS'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                ),
                suffixIcon: Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(Icons.search),
                ),
                border: OutlineInputBorder(),
                hintText: 'Course',
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 5),
                      child: MultiSelectChip(
                        options: levels,
                        maxCharacter: 16,
                        placeholder: "Select level",
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: MultiSelectChip(
                        options: categories,
                        maxCharacter: 16,
                        placeholder: "Select category",
                      )),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 5),
                      child: MultiSelectChip(
                        options: ['Level decreasing','Level ascending'],
                        maxCharacter: 16,
                        placeholder: "Sort by level",
                      )),
                ),
                Expanded(child: SizedBox.shrink(),flex: 1,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
