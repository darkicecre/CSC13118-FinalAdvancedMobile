import 'package:final_advanced_mobile/pages/ReUse/MultiSelectChip.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorChoice.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorDatePicker.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorTimeRangePicker.dart';
import 'package:flutter/material.dart';

class TutorSearch extends StatelessWidget {
  const TutorSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30,left: 30,right: 30),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Find a tutor",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins'),
            ),
          ),
          Container(
            width: double.infinity,
            height: 33,
            margin: EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 5, left: 12),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(164, 176, 190, 1))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(0, 113, 240, 1))),
                  hintText: 'Enter tutor name...',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(200, 200, 200, 1),
                  )),
            ),
          ),
          MultiSelectChip(options: ['Foreign Tutor',
            'Vietnamese Tutor',
            'Native English Tutor'],placeholder: 'Select tutor nationally',),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Select available tutoring time:",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
          ),
          TutorDatePicker(),
          TutorTimeRangePicker(),
          TutorChoice(),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 1.0, color: Colors.blue),
            ),
            child: const Text(
              "Reset Filters",
              style: TextStyle(color: Color.fromRGBO(64, 169, 255, 1)),
            ),
          ),
          SizedBox(height: 20,),
          Divider(),
        ],
      ),
    );
  }
}
