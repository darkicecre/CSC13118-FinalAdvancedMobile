import 'package:final_advanced_mobile/pages/CoursesPage/ListCourses.dart';
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

      ],
      "English For Beginners":[
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5e2b895e541a832674533c18?h=d41d8cd98f00b204e9800998ecf8427e",
            "Basic Conversation Topics",
            "Gain confidence speaking about familiar topics",
            "Beginner - 10 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5e2b99d0c4288f294426b643?h=d41d8cd98f00b204e9800998ecf8427e",
            "Intermediate Conversation Topics",
            "Express your ideas and opinions",
            "Intermediate - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5e2b99e60b114e9a327ceb66?h=d41d8cd98f00b204e9800998ecf8427e",
            "Advanced Conversation Topics",
            "Explore complex topics relevant to modern life",
            "Advanced - 10 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5e7e51cca52da4ab4bd958e6?h=d41d8cd98f00b204e9800998ecf8427e",
            "English Conversation 102",
            "Even more approachable lessons for absolute beginners",
            "Beginner - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/5fd9240c4143a75bf6c2de8b?h=d41d8cd98f00b204e9800998ecf8427e",
            "Intermediate Conversation Topics Part 2",
            "More practice expressing your ideas and opinions in English",
            "Intermediate - 9 Lessons"
        ),
        CustomItem(
            "https://camblycurriculumicons.s3.amazonaws.com/609fdd6fb95e4527664a7252?h=d41d8cd98f00b204e9800998ecf8427e",
            "English Conversation 101",
            "Approachable lessons for absolute beginners",
            "Intermediate - 9 Lessons"
        ),

      ]
    },
    "E-Book": {
      "Book": [
        CustomItem(
            "https://api.app.lettutor.com/file/be4c3df8-3b1b-4c8f-a5cc-75a8e2e6626afilewhat_a_world.jpeg",
            "What a world 1",
            "For teenagers who have an excellent vocabulary background and brilliant communication skills.",
            "Beginner"
        ),

      ]
    },
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
          ListCourses(listItems:  data[_value]??const {},),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
}
