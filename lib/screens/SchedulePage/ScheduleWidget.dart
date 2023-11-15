import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/screens/SchedulePage/SchedulePage.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorInfo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget(
      {super.key,
      this.schedule =
          const Schedule("Fri, 20 Oct 23", 1, "00:30 - 00:55", "", false),
      this.tutor = const Tutor(
          "https://sandbox.api.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1684484879187.jpg",
          "I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.",
          "TN",
          "4d54d3d7-d2a9-42e5-97a2-5ed38af5789a",
          "Keegan",
          50000,
          4.116666666666666,
          373,
          [],[])});

  final Schedule schedule;
  final Tutor tutor;
  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 10,right: 20,bottom: 10),
      color: Color.fromRGBO(240, 240, 240, 1),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.schedule.date,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              widget.schedule.countOfLesson.toString() + " lesson",
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
                      tutor: widget.tutor ,
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
                          widget.schedule.time,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(right: 1),
                      child: widget.schedule.isCanCancel
                          ? ElevatedButton.icon(
                              style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.only(
                                              left: 20,
                                              top: 0,
                                              bottom: 0,
                                              right: 20)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side:
                                        BorderSide(color: Colors.red, width: 1),
                                  ))),
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.xmark,
                                size: 18,
                                color: Colors.red,
                              ),
                              label: Text(
                                'Cancel',
                                style: TextStyle(color: Colors.red),
                              ), // <-- Text
                            )
                          : SizedBox.shrink(),
                    )
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
                      Container(
                        margin: EdgeInsets.only(right: 10, top: 5, bottom: 5),
                        child: InkWell(
                          child: Text(
                            "Edit Request",
                            style: TextStyle(fontSize: 14, color: Colors.blue),
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
                  child: widget.schedule.request == ""
                      ? Text(
                          "Currently there are no requests for this class. Please write down any requests for the teacher.")
                      : Text(widget.schedule.request),
                )
              ],
            ),
          ),
          Container(
            alignment: FractionalOffset.centerRight,
            margin: EdgeInsets.only(top:20,right: 10),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Color.fromRGBO(235, 235, 235, 1)),
              height: 35,
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: null,
                child: const Text('Go to Meeting'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
