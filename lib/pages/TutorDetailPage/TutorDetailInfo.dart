import 'package:final_advanced_mobile/pages/ReUse/ListChoiced.dart';
import 'package:final_advanced_mobile/pages/TutorDetailPage/TutorReviewList.dart';
import 'package:flutter/material.dart';

class TutorDetailInfo extends StatefulWidget {
  const TutorDetailInfo({super.key});

  @override
  State<TutorDetailInfo> createState() => _TutorDetailInfoState();
}

class _TutorDetailInfoState extends State<TutorDetailInfo> {
  List<String> languages = [
    'English',
  ];
  List<String> specialties = [
    'English for Business',
    'Conversational',
    'English for kids',
    'IELTS',
    'STARTERS',
    'MOVERS',
    'FLYERS',
    'KET',
    'PET',
    'TOEFL',
    'TOEIC'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Education",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, bottom: 25),
          alignment: Alignment.centerLeft,
          child: Text(
            "BA",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(120, 120, 120, 1)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Languages",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 40, bottom: 25),
            alignment: Alignment.centerLeft,
            child: ListChoiced(lists: languages)),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Specialties",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 25),
            alignment: Alignment.centerLeft,
            child: ListChoiced(
              lists: specialties,
              limit: 15,
            )),
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 5),
          alignment: Alignment.centerLeft,
          child: Text(
            "Suggested courses",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 5),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Basic Conversation Topics:   ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              InkWell(
                child: Text(
                  "Link",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(24, 144, 255, 1),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 25),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Life in the Internet Age:   ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              InkWell(
                child: Text(
                  "Link",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(24, 144, 255, 1),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Interests",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, bottom: 25, right: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            " I loved the weather, the scenery and the laid-back lifestyle of the locals.",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(120, 120, 120, 1)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Teaching experience",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, bottom: 25, right: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            " I have more than 10 years of teaching english experience",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(120, 120, 120, 1)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Other review",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 40, bottom: 30),
            child: TutorReviewList()
        )
      ],
    );
  }
}
