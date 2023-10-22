import 'package:flutter/material.dart';

class CoursesTab extends StatefulWidget {
  const CoursesTab({super.key});

  @override
  State<CoursesTab> createState() => _CoursesTabState();
}

class CustomItem {
  final String image;
  final String title;
  final String description;
  final String subTitle;
  const CustomItem(this.image,this.title,this.description,this.subTitle);
}

class _CoursesTabState extends State<CoursesTab> {
  String? _value = "Course";
  final List<String> tabs = ['Course','E-Book','Interactive E-Book'];
  final Map<String,Map<String,List<CustomItem>>> data = {
    "Course": {
      "English for Traveling":[
        CustomItem(
          "https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e",
          "Life in the Internet Age",
          "Let's discuss how technology is changing the way we live",
          "Intermedia - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5e2b99f70f8f1e9f625e8317?h=d41d8cd98f00b204e9800998ecf8427e",
            "Life in the Internet Age",
            "Let's discuss how technology is changing the way we live",
            "Intermedia - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5e2b9a4c05342470fdddf8b8?h=d41d8cd98f00b204e9800998ecf8427e",
            "Life in the Internet Age",
            "Let's discuss how technology is changing the way we live",
            "Intermedia - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5eab4979c920a20f93071fdd?h=d41d8cd98f00b204e9800998ecf8427e",
            "Life in the Internet Age",
            "Let's discuss how technology is changing the way we live",
            "Intermedia - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5f3ae244a51a515063c4430c?h=d41d8cd98f00b204e9800998ecf8427e",
            "Life in the Internet Age",
            "Let's discuss how technology is changing the way we live",
            "Intermedia - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/608b87b5225bacb7cf82697c?h=d41d8cd98f00b204e9800998ecf8427e",
            "Life in the Internet Age",
            "Let's discuss how technology is changing the way we live",
            "Intermedia - 9 Lessons"
        ),

      ]
    },
    "E-Book": {},
    "Interactive E-Book": {}
  };
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30,left: 20,right: 20),
      child: Column(
        children: [
          Wrap(
            spacing: 2.0,
            children: List<Widget>.generate(
              tabs.length,
                  (int index) {
                return ChoiceChip(
                  backgroundColor: Color.fromRGBO(228, 230, 235, 1),
                  selectedColor: Color.fromRGBO(221, 234, 255, 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
                  label: Text(tabs[index],style: TextStyle(fontSize: 14),),
                  selected: _value == tabs[index],
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? tabs[index] : null;
                    });
                  },
                );
              },
            ).toList(),
          ),
          Text(_value??"")
        ],
      ),
    );
  }
}
