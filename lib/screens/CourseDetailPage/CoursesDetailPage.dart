import 'package:final_advanced_mobile/screens/CourseDetailPage/CoursesInformation.dart';
import 'package:final_advanced_mobile/screens/CourseDetailPage/CoursesTopic.dart';
import 'package:final_advanced_mobile/screens/CoursesPage/CoursesTab.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyFloatingActionButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoursesDetailPage extends StatefulWidget {
  const CoursesDetailPage({super.key});

  @override
  State<CoursesDetailPage> createState() => _CoursesDetailPageState();
}

class CourseInformation {
  final String reasonTake;
  final String ableToDo;
  final String level;
  final List<String> topics;
  final String suggestTutor;
  const CourseInformation(this.reasonTake, this.ableToDo, this.level,
      this.topics, this.suggestTutor);
}

class _CoursesDetailPageState extends State<CoursesDetailPage> {
  // final CustomItem data = const CustomItem(
  //     "https://camblycurriculumicons.s3.amazonaws.com/5e0e8b212ac750e7dc9886ac?h=d41d8cd98f00b204e9800998ecf8427e",
  //     "Life in the Internet Age",
  //     "Let's discuss how technology is changing the way we live",
  //     "Intermedia - 9 Lessons");
  final CourseInformation info = const CourseInformation(
      "Our world is rapidly changing thanks to new technology, and the vocabulary needed to discuss modern life is evolving almost daily. In this course you will learn the most up-to-date terminology from expertly crafted lessons as well from your native-speaking tutor.",
      "You will learn vocabulary related to timely topics like remote work, artificial intelligence, online privacy, and more. In addition to discussion questions, you will practice intermediate level speaking tasks such as using data to describe trends.",
      "Intermediate",
      [
        "The Internet",
        "Artificial Intelligence (AI)",
        "Social Media",
        "Internet Privacy",
        "Live Streaming",
        "Coding",
        "Technology Transforming Healthcare",
        "Smart Home Technology"
      ],
      "Keegan");

  @override
  Widget build(BuildContext context) {
    final CustomItem data = ModalRoute.of(context)!.settings.arguments as CustomItem;
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: ListView(
            children: [
              CoursesTopic(item: data),
              CoursesInformation(
                info: info,
              )
            ],
          ),
        ),
        floatingActionButton: MyFloatingActionButton()
    );
  }
}
