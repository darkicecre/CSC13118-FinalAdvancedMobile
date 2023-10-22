import 'package:flutter/material.dart';

class TutorChoice extends StatefulWidget {
  const TutorChoice({super.key});

  @override
  State<TutorChoice> createState() => _TutorChoiceState();
}

class _TutorChoiceState extends State<TutorChoice> {
  int? _value = 1;
  List<String> lists = [
    'All',
    'English for kids',
    'English for Business',
    'Conversational',
    'STARTERS',
    'MOVERS',
    'FLYERS',
    'KET',
    'PET',
    'IELTS',
    'TOEFL',
    'TOEIC'
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      children: List<Widget>.generate(
        lists.length,
        (int index) {
          return ChoiceChip(
            backgroundColor: Color.fromRGBO(228, 230, 235, 1),
            selectedColor: Color.fromRGBO(221, 234, 255, 1),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            label: Text(lists[index],style: TextStyle(fontSize: 14),),
            selected: _value == index,
            onSelected: (bool selected) {
              setState(() {
                _value = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
