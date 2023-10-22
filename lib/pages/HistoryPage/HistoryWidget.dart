import 'package:final_advanced_mobile/pages/HistoryPage/HistoryPage.dart';
import 'package:final_advanced_mobile/pages/HistoryPage/HistoryTutorReview.dart';
import 'package:final_advanced_mobile/pages/SchedulePage/SchedulePage.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorInfo.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget(
      {super.key,
        this.history = const History("Fri, 20 Oct 23", 1, "00:30 - 00:55", "vcvsvac",null),
        this.tutor = const Tutor(
            "https://sandbox.api.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1684484879187.jpg",
            "I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.",
            "TN",
            "4d54d3d7-d2a9-42e5-97a2-5ed38af5789a",
            "Keegan",
            50000,
            4.116666666666666,
            373)});

  final History history;
  final Tutor tutor;
  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 20,right: 20),
      color: Color.fromRGBO(240, 240, 240, 1),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.history.date,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              widget.history.countOfLesson.toString() + " lesson",
              style:
              TextStyle(fontSize: 14, color: Color.fromRGBO(0, 0, 0, 0.85)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    // margin: EdgeInsets.only(top: 10),
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(widget.tutor.avatar),
                    ),
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: TutorInfo(
                      country: widget.tutor.country,
                      name: widget.tutor.name,
                      isHideRating: true,
                      isShowActionDirectMessage: true,
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 20,top: 10),
            color: Colors.white,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Text(
                          "Lesson Time: "+widget.history.time,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Color.fromRGBO(235, 235, 235, 1)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Text(
                            "Request for lesson",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                  decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      color: Color.fromRGBO(245, 245, 245, 1)
                  ),
                  child: widget.history.request == ""
                      ? Text(
                      "No request for lesson")
                      : Text(widget.history.request),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                  decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      color: Color.fromRGBO(250, 250, 250, 1)
                  ),
                  child: widget.history.review == null
                      ? Text(
                      "Tutor haven't reviewed yet")
                      : HistoryTutorReview(time:widget.history.time, tutorReview: widget.history.review,),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20,left: 10),
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: InkWell(
                          child: Text(
                            "Add a Rating ",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(top: 20,right: 10),
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: InkWell(
                          child: Text(
                            "Report",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
