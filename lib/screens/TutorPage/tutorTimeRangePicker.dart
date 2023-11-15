import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:time_range_picker/time_range_picker.dart';

class TutorTimeRangePicker extends StatefulWidget {
  const TutorTimeRangePicker({super.key,required this.dateRangeController,required this.onTap});

  final TextEditingController dateRangeController;
  final VoidCallback onTap;
  @override
  State<TutorTimeRangePicker> createState() => _TutorTimeRangePickerState();
}

class _TutorTimeRangePickerState extends State<TutorTimeRangePicker> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: double.infinity,
      margin: EdgeInsets.only(top: 5,bottom: 5),
      alignment: Alignment.centerLeft,
      child: TextField(
        controller: widget.dateRangeController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 5, left: 12),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    BorderSide(color: Color.fromRGBO(164, 176, 190, 1))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color.fromRGBO(0, 113, 240, 1))),
            hintText:'Start time    -    End time',
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
          try {
            TimeRange result = await showTimeRangePicker(
                context: context, interval: Duration(minutes: 30));
            setState(() {
              widget.dateRangeController.text = result.startTime.hour.toString().padLeft(2, '0') +
                  ":" +
                  result.startTime.minute.toString().padLeft(2, '0') +
                  "    -    " +
                  result.endTime.hour.toString().padLeft(2, '0') +
                  ":" +
                  result.endTime.minute.toString().padLeft(2, '0');
              widget.onTap();
            });
          }catch(e){
          }
        },
      ),
    );
  }
}
