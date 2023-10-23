import 'package:final_advanced_mobile/pages/CourseDetailPage/CourseHeading.dart';
import 'package:final_advanced_mobile/pages/CourseDetailPage/CourseItemWithText.dart';
import 'package:final_advanced_mobile/pages/CourseDetailPage/CoursesDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoursesInformation extends StatelessWidget {
  const CoursesInformation(
      {super.key, this.info = const CourseInformation("", "", "", [], "")});
  final CourseInformation info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: CourseHeading(title: "Overview")),
        CourseItemWithText(
          faIconName: FontAwesomeIcons.circleQuestion,
          content: "Why take this course",
        ),
        Container(
          margin: EdgeInsets.only(left: 65, right: 40, top: 5),
          child: Text(info.reasonTake),
        ),
        CourseItemWithText(
          faIconName: FontAwesomeIcons.circleQuestion,
          content: "What will you be able to do",
        ),
        Container(
          margin: EdgeInsets.only(left: 65, right: 40, top: 5),
          child: Text(info.ableToDo),
        ),
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: CourseHeading(title: "Experience Level")),
        CourseItemWithText(
            faIconName: FontAwesomeIcons.userGroup,
            color: Colors.blue,
            content: info.level),
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: CourseHeading(title: "Course Length")),
        CourseItemWithText(
            faIconName: FontAwesomeIcons.book,
            color: Colors.blue,
            content: info.topics.length.toString() + " topics"),
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: CourseHeading(title: "List Topics")),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            children: List<Widget>.generate(
              info.topics.length,
              (index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Color.fromRGBO(215, 215, 215, 0.44)),
                  ),
                  padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                  margin: EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Container(
                        child: Text((index + 1).toString() + "."),
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        child: Text(info.topics[index]),
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: CourseHeading(title: "Suggested Tutors")),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    info.suggestTutor,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  )),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "More Info",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 100,
        )
      ],
    );
  }
}
