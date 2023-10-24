import 'package:final_advanced_mobile/pages/CoursesPage/CoursesSearch.dart';
import 'package:final_advanced_mobile/pages/CoursesPage/CoursesTab.dart';
import 'package:final_advanced_mobile/pages/HistoryPage/HistoryPage.dart';
import 'package:final_advanced_mobile/pages/HistoryPage/HistoryWidget.dart';
import 'package:final_advanced_mobile/pages/ReUse/DemoList.dart';
import 'package:final_advanced_mobile/pages/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/pages/ReUse/MyFloatingActionButton.dart';
import 'package:final_advanced_mobile/pages/SchedulePage/SchedulePage.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  Tutor tutor = new Tutor(
      "https://sandbox.api.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1684484879187.jpg",
      "I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.",
      "TN",
      "4d54d3d7-d2a9-42e5-97a2-5ed38af5789a",
      "Keegan",
      50000,
      4.116666666666666,
      373);

  List<History> histories = [
    new History("Fri, 20 Oct 23", 1, "00:30 - 00:55", "vcvsvac", null),
    new History("Sat, 21 Oct 23", 1, "01:00 - 01:25", "", null),
    new History("Sun, 22 Oct 23", 1, "00:30 - 00:55", "",
        new TutorReview("dfsa", 'Completed', 5, 5, 5, 4)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: ListView(
            children: [
              DemoList(
                imgAsset: "assets/images/courses.svg",
                title: "Discover Courses",
                description: "LiveTutor has built the most quality, methodical and scientific courses in the fields of life for those who are in need of improving their knowledge of the fields.",
                typeImg: "svg",
              ),
              CoursesSearch(),
              CoursesTab()
            ],
          ),
        ),
        floatingActionButton: MyFloatingActionButton());
  }
}
