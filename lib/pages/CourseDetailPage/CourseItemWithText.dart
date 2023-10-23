import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CourseItemWithText extends StatelessWidget {
  const CourseItemWithText({super.key,
    this.faIconName = FontAwesomeIcons.table,
    this.content = "",
    this.color = Colors.red
  });

  final IconData faIconName;
  final String content;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Row(
        children: [
          FaIcon(
            faIconName,
            size: 20,
            color: color,
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                content,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
