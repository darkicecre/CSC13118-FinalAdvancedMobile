import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class TutorDatePicker extends StatefulWidget {
  const TutorDatePicker({super.key});

  @override
  State<TutorDatePicker> createState() => _TutorDatePickerState();
}

class _TutorDatePickerState extends State<TutorDatePicker> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: double.infinity,
      margin: EdgeInsets.only(top: 5),
      alignment: Alignment.centerLeft,
      child: TextField(
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
            hintText: dateinput.text == "" ? 'Enter tutor name...' : dateinput.text,
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
            print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            print(formattedDate); //formatted date output using intl package =>  2021-03-16
            //you can implement different kind of Date Format here according to your requirement

            setState(() {
              dateinput.text = formattedDate; //set output date to TextField value.
            });
          }else{
            print("Date is not selected");
          }
        },
      ),
    );
  }
}
