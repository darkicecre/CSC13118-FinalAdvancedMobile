import 'package:flutter/material.dart';

class CourseHeading extends StatelessWidget {
  const CourseHeading({super.key, this.title = ""});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 22,
          child: Divider(),
        ),
        Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            )),
        Expanded(child: Divider()),
      ],
    );
  }
}
