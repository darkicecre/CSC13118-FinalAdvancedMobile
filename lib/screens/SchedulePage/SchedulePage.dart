import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/screens/ReUse/DemoList.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyFloatingActionButton.dart';
import 'package:final_advanced_mobile/screens/SchedulePage/LatestBook.dart';
import 'package:final_advanced_mobile/screens/SchedulePage/ScheduleWidget.dart';
import 'package:flutter/material.dart';

class Schedule {
  final String date;
  final int countOfLesson;
  final String time;
  final String request;
  final bool isCanCancel;
  const Schedule(this.date, this.countOfLesson, this.time, this.request, this.isCanCancel);
}

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  Tutor tutor = new Tutor(
  "https://sandbox.api.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1684484879187.jpg",
  "I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.",
  "TN",
  "4d54d3d7-d2a9-42e5-97a2-5ed38af5789a",
  "Keegan",
  50000,
  4.116666666666666,
  373);
  List<Schedule> schedules = [
    new Schedule("Fri, 20 Oct 23", 1, "00:30 - 00:55", "vcvsvac", false),
    new Schedule("Sat, 21 Oct 23", 1, "01:00 - 01:25", "", true),
    new Schedule("Sun, 22 Oct 23", 1, "00:30 - 00:55", "", true),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: ListView(
            children: [
              DemoList(
                imgAsset: "assets/images/calendar.svg",
                title: "Schedule",
                description:
                    "Here is a list of the sessions you have booked\nYou can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours",
                typeImg: "svg",
              ),
              LastestBook(),
              ScheduleWidget(schedule: schedules[0],tutor: tutor,),
              ScheduleWidget(schedule: schedules[1],tutor: tutor,),
              ScheduleWidget(schedule: schedules[2],tutor: tutor,)
            ],
          ),
        ),
        floatingActionButton: MyFloatingActionButton()
    );
  }
}
