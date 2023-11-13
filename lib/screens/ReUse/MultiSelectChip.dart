import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

class MultiSelectChip extends StatefulWidget {
  const MultiSelectChip({super.key,this.options = const [],this.placeholder="",this.maxCharacter=50});

  final List<String> options;
  final String placeholder;
  final int maxCharacter;
  @override
  State<MultiSelectChip> createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selected = [];
  List<String> generateOption(List<String> options,maxCharacter){
    List<String> _options = [];
    for(var i=0;i<options.length;i++){
      if(options[i].length>maxCharacter) {
        _options.insert(i, options[i].substring(0, maxCharacter-2)+"..");
      }
      else{
        _options.insert(i, options[i]);

      }
    }
    return _options;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: DropDownMultiSelect(
          onChanged: (List<String> x) {
            setState(() {
              selected = x;
            });
          },
          options: generateOption(widget.options,widget.maxCharacter),
          selectedValues: selected,
          whenEmpty: widget.placeholder,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Color.fromRGBO(164, 176, 190, 1),
              ),
            ),
          ),
        ));
  }
}
