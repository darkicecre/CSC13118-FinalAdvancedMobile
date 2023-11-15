import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:flutter/material.dart';

class TutorChoice extends StatefulWidget {
  const TutorChoice({super.key, this.options = const [],required this.selectedCalback});

  final List<String> options;
  final ValueSetter<String> selectedCalback;

  @override
  State<TutorChoice> createState() => _TutorChoiceState();
}

class _TutorChoiceState extends State<TutorChoice> {
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      children: List<Widget>.generate(
        widget.options.length,
        (int index) {
          return ChoiceChip(
            backgroundColor: Color.fromRGBO(228, 230, 235, 1),
            selectedColor: Color.fromRGBO(221, 234, 255, 1),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            label: Text(widget.options[index],style: TextStyle(fontSize: 14),),
            selected: _value == index,
            onSelected: (bool selected) {
              setState(() {
                _value = selected ? index : null;
                widget.selectedCalback(widget.options[_value??0]);
              });
            },
          );
        },
      ).toList(),
    );
  }
}
