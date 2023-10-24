import 'package:final_advanced_mobile/pages/HistoryPage/HistoryWidget.dart';
import 'package:final_advanced_mobile/pages/ReUse/DemoList.dart';
import 'package:final_advanced_mobile/pages/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/pages/ReUse/MyFloatingActionButton.dart';
import 'package:final_advanced_mobile/pages/SchedulePage/SchedulePage.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorReview {
  final String comment;
  final String status;
  final double ratingBehavior;
  final double ratingListening;
  final double ratingSpeaking;
  final double ratingVocabulary;
  const TutorReview( this.comment,this.status, this.ratingBehavior,
      this.ratingListening, this.ratingSpeaking, this.ratingVocabulary);
}

class History {
  final String date;
  final int countOfLesson;
  final String time;
  final String request;
  final TutorReview? review;
  const History(
      this.date, this.countOfLesson, this.time, this.request,this.review);
}

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
    new History("Fri, 20 Oct 23", 1, "00:30 - 00:55", "vcvsvac",null),
    new History("Sat, 21 Oct 23", 1, "01:00 - 01:25", "",null),
    new History("Sun, 22 Oct 23", 1, "00:30 - 00:55", "",new TutorReview("dfsa",'Completed', 5, 5, 5, 4)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: ListView(
            children: [
              DemoList(
                imgAsset: "assets/images/history.svg",
                title: "History",
                description:
                    "The following is a list of lessons you have attended\nYou can review the details of the lessons you have attended",
                typeImg: "svg",
              ),
              HistoryWidget(
                history: histories[0],
                tutor: tutor,
              ),
              HistoryWidget(
                history: histories[1],
                tutor: tutor,
              ),
              HistoryWidget(
                history: histories[2],
                tutor: tutor,
              )
            ],
          ),
        ),
        floatingActionButton: MyFloatingActionButton()
    );
  }
}
