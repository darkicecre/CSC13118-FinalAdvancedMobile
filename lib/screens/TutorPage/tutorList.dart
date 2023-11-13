import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorTile.dart';
import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class TutorList extends StatefulWidget {
  const TutorList({super.key});

  @override
  State<TutorList> createState() => _TutorListState();
}


class _TutorListState extends State<TutorList> {
  List<Tutor> tutors = tutorLists;

  @override
  Widget build(BuildContext context) {
    int _numPages = 4;
    int _currentPage = 3;
    final NumberPaginatorController _controller = NumberPaginatorController();


    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Recommended Tutors",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Column(
            children: List<Widget>.generate(
              tutors.length,
              (int index) {
                return TutorTile(
                  tutor: tutors[index]);
              },
            ).toList(),
          ),
          SizedBox(height: 10,),
          NumberPaginator(
            numberPages: 4,
            initialPage: 2,
            showPrevButton: true,
            showNextButton: true,
            config:
            const NumberPaginatorUIConfig(
                mode: ContentDisplayMode.numbers,
                buttonSelectedBackgroundColor: Color.fromRGBO(24, 114, 255, 1),
                buttonUnselectedForegroundColor: Color.fromRGBO(24, 114, 255, 1),
                buttonShape: RoundedRectangleBorder(

                )
            ),
            onPageChange: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          )
        ],
      ),
    );
  }
}
