import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class TutorDatePicker extends StatefulWidget {
  const TutorDatePicker({super.key,required this.dateController, required this.onTap});

  final TextEditingController dateController;
  final VoidCallback onTap;
  @override
  State<TutorDatePicker> createState() => _TutorDatePickerState();
}

class _TutorDatePickerState extends State<TutorDatePicker> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: double.infinity,
      margin: EdgeInsets.only(top: 5),
      alignment: Alignment.centerLeft,
      child: TextField(
        controller: widget.dateController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 5,left: 12),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                    color: Color.fromRGBO(164, 176, 190,1)
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                    color: Color.fromRGBO(0, 113, 240,1)
                )
            ),
            hintText: 'Enter tutoring date...',
            hintStyle: TextStyle(
              color: Color.fromRGBO(200, 200, 200, 1),
            ),
            suffixIcon:Padding(
              padding: const EdgeInsets.only(top:5),
              child: FaIcon(
                FontAwesomeIcons.calendar,
                size: 22,
                color: Color.fromRGBO(180, 180, 180, 1),
              ),
            )
        ),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context, initialDate: DateTime.now(),
              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2101)
          );

          if(pickedDate != null ){
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

            setState(() {
              widget.dateController.text = formattedDate; //set output date to TextField value.
              widget.onTap();
            });
          }else{
            print("Date is not selected");
          }
        },
      ),
    );
  }
}
