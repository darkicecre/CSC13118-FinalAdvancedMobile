import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:time_range_picker/time_range_picker.dart';

class TutorTimeRangePicker extends StatefulWidget {
  const TutorTimeRangePicker({super.key});

  @override
  State<TutorTimeRangePicker> createState() => _TutorTimeRangePickerState();
}

class _TutorTimeRangePickerState extends State<TutorTimeRangePicker> {
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
      margin: EdgeInsets.only(top: 5,bottom: 5),
      alignment: Alignment.centerLeft,
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 5, left: 12),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    BorderSide(color: Color.fromRGBO(164, 176, 190, 1))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color.fromRGBO(0, 113, 240, 1))),
            hintText: dateinput.text == ""
                ? 'Start time    -    End time'
                : dateinput.text,
            hintStyle: TextStyle(
              color: Color.fromRGBO(200, 200, 200, 1),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: FaIcon(
                FontAwesomeIcons.calendar,
                size: 22,
                color: Color.fromRGBO(180, 180, 180, 1),
              ),
            )),
        readOnly: true,
        onTap: () async {
          TimeRange result = await showTimeRangePicker(context: context,interval: Duration(minutes: 30));
          setState(() {
            dateinput.text = result.startTime.hour.toString().padLeft(2, '0') +
                ":" +
                result.startTime.minute.toString().padLeft(2, '0') +
                "    -    " +
                result.endTime.hour.toString().padLeft(2, '0') +
                ":" +
                result.endTime.minute.toString().padLeft(2, '0');
          });
        },
      ),
    );
  }
}
