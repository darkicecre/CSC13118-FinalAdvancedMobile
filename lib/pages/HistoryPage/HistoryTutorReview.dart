import 'package:final_advanced_mobile/pages/HistoryPage/HistoryPage.dart';
import 'package:flutter/material.dart';

class HistoryTutorReview extends StatelessWidget {
  const HistoryTutorReview({super.key,this.time="",this.tutorReview = const TutorReview("comment","", 1, 2, 3, 4)});

  final String time;
  final TutorReview? tutorReview;

  @override
  Widget build(BuildContext context) {
    TutorReview review = const TutorReview("comment","", 1, 2, 3, 4);

    String convertStart(double star){
      int rating = star.floor();
      switch(rating){
        case 5:
          return "★★★★★";
          break;
        case 4:
          return "★★★★";
          break;
        case 3:
          return "★★★";
          break;
        case 2:
          return "★★";
          break;
        default:
          return "★";
          break;
          
      }
    }
    String behavior = convertStart((tutorReview??review).ratingBehavior);
    String speaking = convertStart((tutorReview??review).ratingSpeaking);
    String listening = convertStart((tutorReview??review).ratingListening);
    String vocabulary = convertStart((tutorReview??review).ratingVocabulary);

    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: Text("Session 1: "+time,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Lesson status: "+(tutorReview??review).status,style: TextStyle(fontSize: 14),),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text("Behavior ("),
              Text(behavior,style: TextStyle(color: Colors.orange),),
              Text(")"),
            ],
          )
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text("Listening ("),
                Text(listening,style: TextStyle(color: Colors.orange),),
                Text(")"),
              ],
            )
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text("Speaking ("),
                Text(speaking,style: TextStyle(color: Colors.orange),),
                Text(")"),
              ],
            )
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text("Vocabulary ("),
                Text(vocabulary,style: TextStyle(color: Colors.orange),),
                Text(")"),
              ],
            )
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text("Overall comment: "+(tutorReview??review).comment,style: TextStyle(fontSize: 14),),
        ),
      ],
    );
  }
}
