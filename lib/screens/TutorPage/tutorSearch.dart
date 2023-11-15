import 'package:final_advanced_mobile/screens/ReUse/MultiSelectChip.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorChoice.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorDatePicker.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorTimeRangePicker.dart';
import 'package:flutter/material.dart';

class TutorSearch extends StatefulWidget {
  const TutorSearch(
      {super.key,
      required this.tutorNameController,
      required this.dateController,
      required this.dateRangeController,
      required this.onTap,
      required this.nationalChange,
      required this.specialistChange,
      this.nationalOptions = const [],
      this.specialistOptions = const [],
      required this.resetSearch
      });

  final TextEditingController tutorNameController;
  final TextEditingController dateController;
  final TextEditingController dateRangeController;
  final List<String> nationalOptions;
  final List<String> specialistOptions;
  final VoidCallback onTap;
  final VoidCallback resetSearch;
  final ValueSetter nationalChange;
  final ValueSetter specialistChange;
  @override
  State<TutorSearch> createState() => _TutorSearchState();
}

class _TutorSearchState extends State<TutorSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
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
              controller: widget.tutorNameController,
              onSubmitted: (value) => {widget.onTap()},
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
          MultiSelectChip(
            options: widget.nationalOptions,
            placeholder: 'Select tutor nationally',
            selectedCalback: widget.nationalChange,
            isGenerateAll: true,
          ),
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
          TutorDatePicker(
            dateController: widget.dateController,
            onTap: widget.onTap,
          ),
          TutorTimeRangePicker(
            dateRangeController: widget.dateRangeController,
            onTap: widget.onTap,
          ),
          TutorChoice(
            options: widget.specialistOptions,
            selectedCalback: widget.specialistChange,
          ),
          OutlinedButton(
            onPressed: widget.resetSearch,
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 1.0, color: Colors.blue),
            ),
            child: const Text(
              "Reset Filters",
              style: TextStyle(color: Color.fromRGBO(64, 169, 255, 1)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
        ],
      ),
    );
  }
}
