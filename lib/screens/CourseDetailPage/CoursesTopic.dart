import 'package:final_advanced_mobile/screens/CoursesPage/CoursesTab.dart';
import 'package:flutter/material.dart';

class CoursesTopic extends StatefulWidget {
  const CoursesTopic({super.key, this.item = const CustomItem("", "", "", "")});

  final CustomItem item;
  @override
  State<CoursesTopic> createState() => _CoursesTopicState();
}

class _CoursesTopicState extends State<CoursesTopic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 30),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Image.network(
            widget.item.image,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              widget.item.title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.item.description,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            margin: EdgeInsets.only(top: 10, left: 20, right: 10),
          ),
          Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 25),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Discover'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // <-- Radius
                ),
                minimumSize: Size(double.infinity, 45)
              ),
            ),
          ),
          Container(
            child: SizedBox(),
            color: Color.fromRGBO(216, 216, 216, 1),
            height: 5,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
