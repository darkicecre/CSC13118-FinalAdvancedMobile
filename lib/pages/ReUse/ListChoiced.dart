import 'package:flutter/material.dart';

class ListChoiced extends StatelessWidget {
  const ListChoiced({super.key,
    this.lists =  const [
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
  ],
    this.limit = 5
  });

  final List<String> lists ;
  final int limit;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3.0,
      runSpacing: -10,
      children: List<Widget>.generate(
        lists.length,
            (int index) {
          return (index < limit)
              ? ChoiceChip(
            backgroundColor: Color.fromRGBO(228, 230, 235, 1),
            selectedColor: Color.fromRGBO(221, 234, 255, 1),
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(20))),
            label: Text(
              lists[index],
              style: TextStyle(
                  fontSize: 11,
                  color: Color.fromRGBO(0, 113, 250, 1)),
            ),
            selected: true,
            showCheckmark: false,
          )
              : SizedBox.shrink();
        },
      ).toList(),
    );
  }
}
